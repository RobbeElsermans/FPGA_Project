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

If you get an error, check that jumper **JP5** is set to **JTAG**. If not, do so and restart the board.

After the programming, you should see this in a serial console (Like Putty or Tera).
![picture of serial console](pictures/DEMO_Console_output.jpg)
Here we can change some setting and request some registers from tje camera.

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
