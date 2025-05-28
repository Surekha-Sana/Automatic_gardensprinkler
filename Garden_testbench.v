`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2025 01:20:08 PM
// Design Name: 
// Module Name: Garden_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Garden_tb;
  reg clk,moisture,water;
  wire relay,buzzer,sprink;
  Garden uut(.clk(clk),.moisture(moisture),.water(water),.relay(relay),.buzzer(buzzer),.sprink(sprink));
  always #5 clk=~clk;
  initial
  begin
  clk=1;
  moisture=1;water=0;
  #10  moisture=1;water=1;
  #10  moisture=0;water=1;
  #10  moisture=0;water=0;
  #10 $finish;
  end
endmodule

