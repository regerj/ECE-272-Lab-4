_**This lab instruction set is the property of Oregon State University, I claim no credit to these instructions, only to my solution to the lab.**_

# ECE 272 Section 4: Counters
### 4.1 Background Information
Section 3 developed a design to drive a single digit on a seven-segment display. Section 4 will go further than that to use a counter to drive all 6 digits of the display. This will be done by incrementing the data stored in a register made of D-Flip-Flops. Students will use an on-board switch or button to drive the counter. Students will need to display 24 bits as 6 digits of Hexidecimal on the seven-segment displays.

### 4.2 Section Overview
Objective: Design and implement a system on the DE10-Lite using DFFs, Adders, and a seven-segment display decoder to output a 6 digit Hexidecimal counter.

1. Create a new project.
2. Create a software-level block diagram to describe the Sequential logic required for this section.
3. Create a .bdf file for the top level.
4. Create a .bdf file for any other modules in your block diagram.
5. Enter the design from your block diagram into Quartus.
6. Assign pins with .QSF file or other method. 
7. Program and test hardware.
### 4.3 Learning Objectives
In this section, the following items will be covered:

1. Creating software-level block diagrams.
2. Sequential logic. 
3. Clock Modulation. 
### 4.4 Materials
1. Quartus Prime Lite Edition V. 18.0
2. DE10-Lite kit with MAX10 10M50DAF484C7G FPGA
3. USB to USB-B cable
4. The ECE 271 textbook, Digital Design and Computer Architecture by Drs. David and Sarah Harris
### 4.5 Procedure:
#### <div align="center">There are 6 steps to digital logic design</div>

![Design Process Flow](https://github.com/regerj/ECE-272-Lab-4/blob/master/4.1%20Design%20Process.png)

#### <div align="center">Design Process Figure 4.1: Use this process for the designing section 4.</div>

1. Design: The context of the design is established in this step. The context involves defining the inputs, desired outputs, and all the logic required in-between. In this step, all the minimizations and layout are planned for the design entry process. While this step is not always the longest, it should involve the most thought and effort. This typically requires a complete block diagram showing all the logic blocks and the connections between them, often with written explanations of specific functions. 
2. Design Entry: The actual drafting of the digital logic design occurs in this step, translating the design from block diagrams and descriptions into the software. This can be accomplished directly by writing HDL code, or graphically by drawing a schematic that a software tool can convert into HDL code. 
3. Design Simulation: Before committing to hardware, this step tests the design in a controlled computer simulation. If the design does not function as specified in the ”Design” step, it is revised. 
4. Synthesize and Map Design: When the design simulates correctly, the HDL and schematic source files are synthesized into a design file that can be written to the FPGA. This includes assigning the inputs and outputs of the design to IO pins. 
5. Program Hardware: After the design file is created, it is used to configure the FPGA. Quartus Prime sends a bit stream over the USB-B cable to configure the DE10-Lite FPGA. 
6. Test Hardware: Verify hardware operation once the FPGA has been programmed. The FPGA should operate exactly as the design predicted, which was verified by the simulation. Synthesis problems, timing violations, or incorrect assumptions about the hardware can require the designer to return to the ”Design” step.
### 4.6 Design
This lab will require expanding the designs created in sections 2 and 3 in conjunction with new sequential logic.

In this section, the term clock referes to the signal to increment the counter. 

This objectives of this section may be met by several designs. It is very much recomended that you create modules. A modular design will be easier to create, debug, and reuse.

Read the rest of Section 4.6, think of the best way to use the componets you have to build a counter.  

There are 3 modules that will be needed in your design:

### 4.6.1 The Register
To store the data to be incremented a register will be constructed from D-Flip-Flops.

D-Flip-Flops logicically function by outputting the value of D to Q every positive edge of the clock. This effectily 'stores' or 'freezes' the value of D into Q once per clock cycle. This can be used to synchronize combinational logic to a clock so it can be used with sequential logic. 



This lab will use D-Flip-Flops to store the number that will be incrimented for the counter.

 #### <div align="center">TFF table</div>
 
<p align="center">
  <img width="550" height="231" src="https://github.com/regerj/ECE-272-Lab-4/blob/master/dff.png">
</p>

#### <div align="center">Table 4.1(D flip-flop Truth Table)</div>

### 4.6.2 The Adder
The Ripple Carry Adder designed in Section 2 will be expanded for this lab so it can work with the data in the register. 

One opperand of the adder will be a constant value which is the value being added to the current number.

The other opperand of the adder will be the value stored in the register. 

### 4.6.3 The seven-segment display decoder 
 This was designed in Section 3, and will need to be instanciated for each digit of the display used. 

### 4.7 Design Entry
1. Create Schematics for your modules in .BDF files. 
2. Create symbols for the completed modules by clicking file -> create/update -> Create symbol for current file.
3. Use the Bus Tool (Right next to the node tool) to create busses, which automatically connect to busses of the same name and can contain multiple bits of information. These busses wil be used to connect your modules together. Set a bus name by right clicking it, and selectiong properties. Multiple bits can be assigned with the AHDL notation of: Name[3..0] Bits can be accessed by naming a node Name[x] where x is the index of the desired bit. 
4. Connect everything together in the top level.
5. Assign pins to the outputs.  
 
It may be helpful to review the Quartus design tips file. 

By clicking Assignments -> Import Assignments and navagating to THIS FILE, you can import pin assignments for all 6 digits.

You must edit the output names in the file, or the names of your outputs in quartus to get it to work.

The names used in the .QSF File are SegX[Y] where X is the digit of the display from 0 to 5 and Y is the segment number of that digit.   

Otherwise just assign the 42 pins with Pin Panner or Assignment Editor. 

### 4.8 Design Simulation
It is required that you use ModelSim to simulate your design.

### 4.9 Map Design
Synthesize your design and assign pins to your inputs and outputs using the same process as in Section 1.8.

### 4.10 Program Hardware
Program the MAX10 using the same process as in Section 1.9.

### 4.11 Test Hardware
Test to make sure digits display correctly. 

It may be helpful to further slow the clock to see them all. 

### 4.12 Checkoff
* A design in .BDF files made with DFFs and adders.
* Valid hardware output.
* Valid simulation output.
