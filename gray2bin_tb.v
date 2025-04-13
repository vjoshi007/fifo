module gray2bin_tb;
  reg [7:0] gray;
  wire [7:0] bin;

  gray2bin uut (
    .gray(gray),
    .bin(bin)
  );

  initial begin
    gray = 4'b0000; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0001; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0011; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0010; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0110; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0111; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0101; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    gray = 4'b0100; #10;
    $display("Gray: %b, Bin: %b", gray, bin);
    
    $finish;
  end
endmodule