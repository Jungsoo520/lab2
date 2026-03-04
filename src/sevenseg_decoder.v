`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2026 10:43:34 AM
// Design Name: 
// Module Name: sevenseg_decoder
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


module sevenseg_decoder(
    input  [3:0] i_Hex,
    output reg [6:0] o_seg_n
);

always @* begin
    case (i_Hex)
        4'h0: o_seg_n = 7'b1000000; // 0
        4'h1: o_seg_n = 7'b1111001; // 1
        4'h2: o_seg_n = 7'b0100100; // 2
        4'h3: o_seg_n = 7'b0110000; // 3
        4'h4: o_seg_n = 7'b0011001; // 4
        4'h5: o_seg_n = 7'b0010010; // 5
        4'h6: o_seg_n = 7'b0000010; // 6
        4'h7: o_seg_n = 7'b1111000; // 7
        4'h8: o_seg_n = 7'b0000000; // 8
        4'h9: o_seg_n = 7'b0010000; // 9
        4'hA: o_seg_n = 7'b0001000; // A
        4'hB: o_seg_n = 7'b0000011; // b
        4'hC: o_seg_n = 7'b1000110; // C
        4'hD: o_seg_n = 7'b0100001; // d
        4'hE: o_seg_n = 7'b0000110; // E
        4'hF: o_seg_n = 7'b0001110; // F
        default: o_seg_n = 7'b1111111; // all OFF
    endcase
end

endmodule
