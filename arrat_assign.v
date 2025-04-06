module array ();

 reg [7:0] mem1 ;
 reg [7:0] mem2[0:3] ;
 reg [7:0] mem3[0:3][0:1] ; 
 
 initial begin x
    integer i ;
    integer j ;

     mem1 = 8'ha ; // Corrected hexadecimal value
     $display("mem1 is = 0x%0h", mem1); // Display the value of mem1 for debugging
     mem2[0] = 8'hca;
     mem2[1] = 8'ha;
     mem2[2] = 8'h12;
     mem2[3] = 8'h9a;
     
     for (i=0; i<4; i = i+1)
      begin 
        $display("memeory contents are %0d", mem2[i]);
     end    
     
    for (j=0; j<2; j=j+1) begin
        for (i=0;i<4; i= i+1) begin 
            mem3[j][i] = j+i ;
            $display("3d memory contents are %d", mem3[j][i]);
        end 
    end   
 end 
endmodule      