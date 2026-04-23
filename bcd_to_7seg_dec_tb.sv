// Description : Verification of BCD to 7-Segment Decoder
// Date : 04/04/2026
// Owner : Soham Sen

module bcd_to_7seg_dec_tb;
  
  // TB driving signals to DUT
  reg [3:0] bcd_inp;
  
  // DUT output signals
  wire [6:0] segment7_out;
  
  // DUT instantiation
  bcd_to_7seg_dec b0(.bcd_inp(bcd_inp),
                     .segment7_out(segment7_out));
  
  
  // Initialization
  initial begin
    bcd_inp<=0;
  end
  
  // Test Pattern
  initial begin
    for(integer i=0;i<=9;i=i+1) begin
      bcd_inp<=i;
      #10;
    end
    $finish;
  end
  
  // Monitor the signals
  initial begin
    $monitor("bcd_inp=%b segment7_out=%b",bcd_inp,segment7_out);
  end
  
  // Dump the signals in the vcd file to be viewed in waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  
endmodule
