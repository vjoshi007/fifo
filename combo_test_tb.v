module combo_test_tb;
 
  reg a,b,c,d,e ;
  wire z;

  integer i;
  
  // instantiate the unit under test
   combo_test u0(.a(a), .b(b), .c(c), .d(d), .e(e), .z(z));

   initial 
    begin
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;


        // use a monitor task to display changes in any of the variables  
        $monitor("a=%b b=%b c=%b d=%b e=%b z=%b", a, b, c, d, e, z);
    
       for (i= 0; i < 32; i = i+1) 
        begin
            {a,b,c,d,e} = i;
            #10;
        end 
    end

endmodule 