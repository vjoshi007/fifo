module gray2bin
       #(
        parameter width = 8
       )
       (
         input [width-1:0] gray,
         
         output reg [width-1:0] bin 
      ) ;

integer i; 

always @(*) begin
    bin[width-1] = gray[width-1];
    for (i=width-2; i >=  0; i = i-1) begin 
        bin[i] = bin[i+1] ^ gray[i];
    end
end ;

endmodule 