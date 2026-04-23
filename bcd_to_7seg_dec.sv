// Description : Design of BCD to 7-Segment Decoder
// Date : 04/04/2026
// Owner : Soham Sen

module bcd_to_7seg_dec(input wire [3:0] bcd_inp,
                       output reg [6:0] segment7_out);
  
  always_comb
    begin
      case(bcd_inp)
        4'b0000: segment7_out<=7'b0111111; // 0
        4'b0001: segment7_out<=7'b0000110; // 1
        4'b0010: segment7_out<=7'b1011011; // 2
        4'b0011: segment7_out<=7'b1001111; // 3
        4'b0100: segment7_out<=7'b1100110; // 4
        4'b0101: segment7_out<=7'b1101101; // 5
        4'b0110: segment7_out<=7'b1111101; // 6
        4'b0111: segment7_out<=7'b0000111; // 7
        4'b1000: segment7_out<=7'b1111111; // 8
        4'b1001: segment7_out<=7'b1100111; // 9
        default: segment7_out<=7'b0000000; // 0
      endcase
    end
  
endmodule
