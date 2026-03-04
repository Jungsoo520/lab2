`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2026 10:44:40 AM
// Design Name: 
// Module Name: sevenseg_decoder_tb
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


module sevenseg_decoder_tb;

reg  [3:0] i_Hex;
wire [6:0] o_seg_n;

// Instantiate DUT
sevenseg_decoder DUT (
    .i_Hex(i_Hex),
    .o_seg_n(o_seg_n)
);

initial begin

    i_Hex = 4'h0; #10;
    i_Hex = 4'h1; #10;
    i_Hex = 4'h2; #10;
    i_Hex = 4'h3; #10;
    i_Hex = 4'h4; #10;
    i_Hex = 4'h5; #10;
    i_Hex = 4'h6; #10;
    i_Hex = 4'h7; #10;
    i_Hex = 4'h8; #10;
    i_Hex = 4'h9; #10;
    i_Hex = 4'hA; #10;
    i_Hex = 4'hB; #10;
    i_Hex = 4'hC; #10;
    i_Hex = 4'hD; #10;
    i_Hex = 4'hE; #10;
    i_Hex = 4'hF; #10;

    $finish;

end

endmodule
