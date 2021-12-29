# Implementation

Dit zijn de kern stappen die ik ga volgen in dit project:

1. Installeer Vivado Design Suite & Xilinx SDK 2016.4,
2. Download het tutorial project van [hier](https://digilent.com/reference/learn/programmable-logic/tutorials/zybo-z7-pcam-5c-demo/start),
3. Start en evalueer/ onderzoek het tutorial project.
4. Probeer een filter in de flow te verwerken.

## Tutorial

Als we even naar de tutorial's pagina gaan, dan zien we dat we niet enkel en alleen het tutorial project moeten downloaden. We hebben ook nog board-files nodig.

> board-files -> Deze beschrijven een evaluation board zoals type FPGA, Boudrate, hoeveelheid flipflops etc.

[Hier](https://digilent.com/reference/software/vivado/board-files) een tutorial om board-files te importeren in Vivado 2016.4. [Dit](https://github.com/Digilent/vivado-boards/) is de GitRepo van de nodige board-files. 

Na het downloaden en installeren van Vivado Design Suite & Xilinx SDK 2016.4 en het inporteren van de juiste board-files gaan we het [tutorial project](https://github.com/Digilent/Zybo-Z7-20-pcam-5c/releases/download/v2016.4-1/Zybo-Z7-20-pcam-5c-2016.4-1.zip) downloaden en openen in Vivado Design Suite.

> **OPGELET** 
> 
> Er zijn nog andere versies ter beschikking op de [GitHub Pagina](https://github.com/Digilent/Zybo-Z7-20-pcam-5c/releases). Wij gaan versie 2016.4 nemen zoals in de tutorial.

Stappen
1. kopieer de bestands locatie van ```create_project.tcl``` die zich in de folder ```proj``` bevind. 
2. Open Vivado 2016.4
   * Als je nog een andere versie hebt, ga dan naar de installatie folder ***(meestal direct op de C schijf)*** van Vivado 2016.4 en zoek naar een batch bestand genaamd ***vivado.bat*** in de folder ```Vivado/2016.4/bin/```.
3. Type onderaan in vivado bij ***Type a Tcl command here*** ```cd (HET BESTANDS PAD)``` zonder haakjes er rond. Belangrijk is dat je de backslashes ```\``` veranderd door forward slaches ```/```. 
   * ***cd c:\user\a\b\create_project.tcl*** wordt dan ***cd c:/user/a/b/create_project.tcl***.
4. Na het commando cd gaan we volgend commando ingeven ```source ./create_project.tcl```. Dit commando zal voor ons het project aanmaken zodat we het kunnen bekijken en eventueel kunnen bewerken.
5. We gaan nu de bitstream genereren door onderaan op ***Generate Bitstream*** te drukken in het venster Flow Navigator.
6. Wanneer de bitstream gegenereerd is, gaan we de hardware definities exporteren met de bitstream bij via ```File -> Export -> Export Hardware```.
7. We gaan nu de SDK openenen van Vivado via ```File -> Launch SDK```.
8. Om het project te importeren gaan we in de SDK window op ```File -> Import``` drukken.
   1. Vervolgens op ```General -> Existing Project into Workspace```
   2. Nadien selecteren we de root directory dat de folder ***SDK*** is.
   3. Als laatste drukken we op de knop ```Select All``` en vinken we ```Copy projects into workspace```.
9. Nu moeten we ons Zybo Z7-20 board programmeren met de gegenereerde bitstream file. Hiervoor gaan we naar ```Xilinx Tools -> Program FPGA```.
10. Als laatste gaan we het gemaakte programma in C++ uploaden naar ons Zybo Z7-20 board. Dit doen we door rechter muisknop op ```pcam_vdma_hdmi``` dan ```Run As``` -> ```1 Launch On Hardware (System Debugger)```.

Als je een error ontving, kijk dan na of de jumper **JP5** op **JTAG** staat. Als dit het geval is, reset en herhaal stap 9 en 10.

Kijk uiteraard ook of dat de Zybo Z7-20 board aanstaat.

Na het succesvol programmeren, zou je dit moeten zien in een seriële monitor (zoals [PuTTY](https://www.putty.org/) of [Tera Term](https://ttssh2.osdn.jp/index.html.en)).
![picture of serial console](pictures/DEMO_Console_output.jpg)

In de seriële monitor kunnen we nu wat instellingen wijzigen en een paar register waardes opvragen van de Pcam 5C.

Niet te vergeten is de video output op de HDMI display.

![picture of monitor](pictures/DEMO_monitor_output.jpg)

Het werkt! Dat betekend dat het tijd is om het Block Design te inspecteren en de blokken die er gebruikt worden. Zo kunnen we bepalen waar we de filters kunnen plaatsen.

### Bronnen
* [Tutorial usage Demo](https://digilent.com/reference/learn/programmable-logic/tutorials/zybo-z7-pcam-5c-demo/start)
* [Tutorial opening project demo](https://digilent.com/reference/learn/programmable-logic/tutorials/github-demos/start)
* [Tutorial importing board files](https://digilent.com/reference/software/vivado/board-files?redirect=1)
* [programming problem](https://forum.digilentinc.com/topic/12952-ap-transaction-error-dap-status-f0000021/) 
* [Demo gitHub repo](https://github.com/Digilent/Zybo-Z7-20-pcam-5c)
* [Board Files gitHub repo](https://github.com/Digilent/vivado-boards/)

# data divider

## Where is the data?!

Als we het Block Design openen, dan zien we rechts vanonder dat zich daar de output bevind van de HDMI (HDMI_TX). Voordat we onze data naar de HDMI sturen, moet deze geconverteerd worden van RGB naar DVI.

![REAL Block Design](./pictures/REAL_Block_Design.jpg)

voor de blok "rgb2dvi_0" zal dus de rgb waarden voorkomen. Dit gaan we opvangen en bewerken. Omdat ik hier nog geen enkele ervaring mee heb om met IP-blocks een hele schakeling op te bouwen, zal het niet vanzelf gaan.

We weten nu via [deze](https://www.xilinx.com/content/dam/xilinx/support/documentation/ip_documentation/v_axi4s_vid_out/v4_0/pg044_v_axis_vid_out.pdf) datasheet van AXI4-Stream to Video Out dat **vid_active_video** een vector bevat van 24. Elke 8'ste bit van de vector stelt een rgb waarde voor. 

* 0-7 GREEN
* 8-15 BLUE
* 16-23 RED

![REAL_RGB_STRUCTURE](./pictures/REAL_RGB_STRUCTURE.jpg)

We gaan de data dus moeten opsplitsen in telkens 8 bits om elke kleur afzonderlijk te filteren. 

Na wat zoeken heb ik de IP-blokken gevonden [slice and concat](https://support.xilinx.com/s/article/60844?language=en_US). De slice gaan we kunnen gebruiken om een vector op te delen in kleinere vectoren en de concat om meerdere kleinere vectoren samen te voegen tot één grote vector. We moeten zeker rekening houden dat we de RGB ook terug op de juiste volgorde samenvoegen.

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


Even benaderen hoe we de [23:0] slicen om hiervan de eerste byte te verkrijgen die van [7-0] gaat (wat de kleur groen voorstelt).

|Name|Value|Description|
|:---|:----------|:-----|
|Din Width|24|The input bus is [23:0] wich means it is 24 bits long|
|Din From|7|We start at bit 7|
|Din Down To|0| We end at the end wich is bit 0|

Dit proces gaan we herhalen voor elke kleur. 

Na de slice IP-Blocks te hebben ingesteld, gaan we ze nu verbinden met de ***v_axi4s_vid_out_0*** op poort ***vid_data[23:0]***. Ik heb de slice IP-blokken op volgorde gezet gaande van bovenaan is groen, midden is Blauw en onderaan is rood. Hieronder een foto.

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

Bij het aansluiten van de slice's naar de concat IP-Block moeten we rekening houden met de volgorden. De concat block zal In0 als LSB beschouden en hierop verder gaan. Wij gaan dus eerst de vector van de kleur groen, dan de vector van de kleur blauw en als laatste de kleur rood. Hieronder een foto.

![Hookup slice's & concat](./pictures/REAL_Block_Design_Hookup_3.jpg)

Als laatste connecteren we de concat IP-Block.

![Hookup concat](pictures/REAL_Block_Design_Hookup_4.jpg)

Na de bitstream aanmaken, zouden we hetzelfde resultaat moeten te zien krijgen.

## Resultaat 
> 
> Het beeld was een beetje verschoven en de kleur wit was meer richting rood
> 
> **De oorzaak hiervan ligt denk ik aan het feit dat de IP-block rgb2dvi_0 de VSync en HSync bits vele eerder krijgt dan de RGB-data waardoor er een verschuiving ontstaat.**

## Bronnen
[slice and concat](https://support.xilinx.com/s/article/60844?language=en_US)

# data filter
Nu we weten hoe de de RGB waardes kunnen scheiden van elkaar, kunnen we eens proberen om hier een filter op toe te passen. We gaan nu eens proberen om zelf een "filter" te maken in VHDL. We gaan eerst gewoon proberen om een 8 bit vector te shiften naar rechts met 4 bits en nadien terug naar buiten te sturen. We gaan dit met de kleur rood doen.



Een link om bayer2RGB aan te passen om eventueel daar de RGB waarde aan te passen [link](https://fumimaker.net/entry/2020/02/06/002934)