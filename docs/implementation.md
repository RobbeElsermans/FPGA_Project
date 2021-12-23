# Implementation

These are the steps I'm going to follow allong my implementation:

* Installing Vivado Design Suite & Xilinx SDK 2016.4,
* Download the tutorial project from [here](https://digilent.com/reference/learn/programmable-logic/tutorials/zybo-z7-pcam-5c-demo/start),
* Start and evaluate the tutorial project


When we go to the tutorial, we find that we need to install some other thing too. Like the board files etc.
[Here](https://digilent.com/reference/software/vivado/board-files) is a tutorial to import the board files into Vivado 2016.4. [This](https://github.com/Digilent/vivado-boards/) is the GitRepo. 

After that we're going to download the [project](https://github.com/Digilent/Zybo-Z7-20-pcam-5c/releases/download/v2016.4-1/Zybo-Z7-20-pcam-5c-2016.4-1.zip). note that there are other versions available on the [GitPage](https://github.com/Digilent/Zybo-Z7-20-pcam-5c/releases). We're going to use the 2016.4 version like in the demo.

Steps
1. Copy the file's location of ```create_project.tcl``` in ```proj``` folder
2. Go to TCL console in Vivavo and cd to the selected filepath. (replace ```\``` with ```/```)
3. Type ```source ./create_project.tcl``` in the console and press Enter again.
4. Generate bitstream in Vivado
5. Export hardware with bitstream included via ```File -> Export -> Export Hardware```
6. Launch the SDK
7. Import in SDK via ```File -> Import```
    1. Existing Project into Workspace
    2. Select the folder SDK and click OK
    3. select all Projects and copy projects into workspace
8. Program the FPGA via ```Xilinx Tools -> Program FPGA```
9. Upload the program via right click ```pcam_vdma_hdmi``` -> ```Run As``` -> ```1 Launch On Hardware (System Debugger)```

If you get an error, check if jumper **JP5** is set to **JTAG**. If not, do so and restart the board.

After the programming, you should see this in a serial console (Like Putty or Tera).
![picture of serial console](pictures/DEMO_Console_output.jpg)
Here we can change some setting and request some registers from the camera.

Last but not least you need to have a video output on your monitor.
![picture of monitor](pictures/DEMO_monitor_output.jpg)

It's working! That means it is time to dig into the code and understand every bit and byte of it.

## Sources
* [Tutorial usage Demo](https://digilent.com/reference/learn/programmable-logic/tutorials/zybo-z7-pcam-5c-demo/start)
* [Tutorial opening project demo](https://digilent.com/reference/learn/programmable-logic/tutorials/github-demos/start)
* [Tutorial importing board files](https://digilent.com/reference/software/vivado/board-files?redirect=1)
* [programming problem](https://forum.digilentinc.com/topic/12952-ap-transaction-error-dap-status-f0000021/) 
* [Demo gitHub repo](https://github.com/Digilent/Zybo-Z7-20-pcam-5c)
* [Board Files gitHub repo](https://github.com/Digilent/vivado-boards/)

# Implementation data divider

## Where is the data?!
When we open the Block Design. we can see at the right bottom that we have the output of the HDMI_TX. Before we going out to HDMI_TX we need to convert the RGB to DVI.
![REAL Block Design](./pictures/REAL_Block_Design.jpg)

voor de blok "rgb2dvi_0" zal dus de rgb waarden voorkomen. Dit gaan we opvangen en bewerken. Omdat ik hier nog geen enkele ervaring mee heb om met IP-blocks een hele schakeling op te bouwen, zal het niet vanzelf gaan.

We weten nu dat **vid_active_video** een vector bevat van 24. Elke 8'ste bit van de vector stelt een rgb waarde voor. 

* 0-7 GREEN
* 8-15 BLUE
* 16-23 RED

![REAL_RGB_STRUCTURE](./pictures/REAL_RGB_STRUCTURE.jpg)

We gaan de data dus moeten opsplitsen om elke kleur afzonderlijk te filteren. 

Na wat zoeken heb ik de IP-blokken gevonden [slice and concat](https://support.xilinx.com/s/article/60844?language=en_US). De slice gaan we kunnen gebruiken om een vector op te delen in kleinere vectoren en de concat om meerdere kleinere vectoren samen te voegen tot grotere vectoren. We moeten zeker rekening houden dat we de RGB ook terug op de juiste volgorde samenvoegen.

Ook niet onbelangrijk is dat we de andere uitgangen van ***v_axi4s_vid_out_0*** juist verbinden met de ingangen van ***rgb2dvi_0***.

> Verklaring gebruikte uitgangen ***v_axi4s_vid_out_0***
> 
> |Name|Description|
> |:---|:----------|
> |vid_active_video|Video output data valid.|
> |vid_data[23:0]|De RBG data in een vector van 24 met een opsplitsing van 8 per kleur. Deze gaan we opsplitsen.|
> |vid_hsync|Video output horizontal sync.|
> |vid_vsync|Video output vertical sync.|

> Verklaring gebruikte ingangen ***rgb2dvi_0***
> 
> |Name|Description|
> |:---|:----------|
> |vid_pData[23:0]|Video pixel data packed as RBG|
> |vid_pHSync|Horizontal synchronization video timing signal.|
> |vid_pVSync|Vertical synchronization video timing signal.|
> |vid_pVDE|Video data valid: 1 = Active video. 0 = Blanking period.|

## Hooking up

![Hooking up](pictures/REAL_Block_Design_Hookup_1.jpg)

* vid_active_video -> vid_pVDE
* vid_hsync -> vid_pHSync
* vid_vsync -> vid_pVSync

Nu dat deze zijn aangesloten is het tijd om eens met de gevonden (slice & concat) IP-blocks te experimenteren. We gaan **vid_data[23:0]** slicen in 3 verschillende vectoren met elks een lengte van 8. Nadien gaan we deze terug samenbrengen naar een vector van 23.

### Slice
De slice IP-block bevat een ingang die van [x:0] gaat en een uitgang die een deel van de ingang doorgeeft. Wij gaan in dit geval een ingang ontvangen die van [23:0] gaat en een uitgang die van [7:0]. Omdat we in de [23:0] vector, 3 andere vectoren gaan halen is het van belang dat we beschrijven hoe we dit doen.

We gaan het menu van de slice even verduidelijken.

|Name|Description|
|:---|:----------|
|Din Width|The bit of the input bus where bits will be ripped off.|
|Din From|The highest bit to be ripped off.|
|Din Down To|The lowest bit to be ripped off.|
|Dout Width|The width of the output vector|


Even duidelijk benaderen hoe we de [23:0] slice om hiervan de eerste byte te verkrijgen die van [7-0] gaat wat de kleur groen voorstelt.

|Name|Value|Description|
|:---|:----------|:-----|
|Din Width|24|The input bus is [23:0] wich means it is 24 bits long|
|Din From|7|We start at bit 7|
|Din Down To|0| We end at the end wich is bit 0|

Dit proces gaan we herhalen voor elke kleur. 

Na de slice IP-Blocks te hebben ingesteld, gaan we ze nu verbinden met de ***v_axi4s_vid_out_0*** op poort ***vid_data[23:0]***. Ik heb de slice IP-blokken op volgorde gezet gaande van bovenaan = groen, midden is Blauw en onderaan is rood. Hieronder een foto.
![hookup slice](pictures/REAL_Block_Design_Hookup_2.jpg)

### Concat

Om nu de data terug samen te brengen hebben we het concat IP-Block nodig. Deze zal de 3 (kleur) vectoren van [7:0] samenvoegen en terug naar een vector van [23:0] omzetten. 

Even de instellingen uitleggen.

|Name|Description|
|:---|:----------|
|Number of ports|The amount of ports we need to concat the data.|
|Inx Width|The bit of the input bus.|

In ons geval gaan we dus 3 ingangen nodig hebben die elks 8 bits bevatten. 

|Name|Value|Description|
|:---|:----------|:-----|
|Number of ports|3|3 inputs|
|Din From|7|We start at bit 7|
|In0 Width|8|8 bits input|
|In1 Width|8|8 bits input|
|In2 Width|8|8 bits input|

Bij het aansluiten van slice's naar de concat IP-Block moeten we rekening houden met de volgorden. De concat block zal In0 als LSB beschouden en hierop verder gaan. Wij gaan dus eerst de vector van de kleur groen, dan de vector van de kleur blauw en als laatste de kleur rood. Hieronder een foto.
![Hookup slice's & concat](./pictures/REAL_Block_Design_Hookup_3.jpg)

Als laatste connecteren we de concat IP-Block 
![Hookup concat](pictures/REAL_Block_Design_Hookup_4.jpg)

Na de bitstream aanmaken, zouden we hetzelfde resultaat moeten te zien krijgen.

## Resultaat 
> 
> Het beeld was een beetje verschoven en de kleur wit was meer richting rood
> 
> **De oorzaak hiervan ligt denk ik aan het feit dat de IP-block rgb2dvi_0 de VSync en HSync bits vele eerder krijgt dan de RGB-data waardoor er een verschuiving ontstaat.**

Een link om bayer2RGB aan te passen om eventueel daar de RGB waarde aan te passen [](https://fumimaker.net/entry/2020/02/06/002934)