`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2025 12:48:33 PM
// Design Name: 
// Module Name: Garden
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


module Garden(clk,moisture,water,relay,buzzer,sprink);
input clk,moisture,water;
output reg relay,sprink,buzzer;

always@(posedge clk)
begin
case({moisture,water})
2'b11:begin
    relay<=0;
    sprink<=1;
    buzzer<=0;
    end
2'b10:begin
        relay<=1;
        buzzer<=1;
        sprink<=0;
        end
 2'b01:begin
        relay<=1;
        buzzer<=0;
        sprink<=0;
        end
 2'b00:begin
        relay<=1;
        buzzer<=1;
        sprink<=0;
        end    
  endcase
  end
endmodule


//module h1( input mo_signal ,output reg out1);
//always@(*) begin
//if(mo_signal==1) 
//    out1=0;
//else 
//    out1=1;
//end 
//endmodule
//module h2( input water_signal,output reg out2);
//always@(*)
//begin
//    if(water_signal==1)
//        out2=1;
//     else
//        out2=0;
//end
//endmodule
//module h11( input clk,mo_signal,water_signal,output relay,buzzer,sprink);
//wire out1,out2;

//h1 j1( mo_signal, out1);
//h2 j2(water_signal,out2);
//Garden h1111( clk, out1,out2,relay,buzzer,sprink);

