module combo_test(
  input a,
  input b,
  input c, 
  input d,
  input e,
  output reg z
);

always @(*) begin
    z = ((a & b) ^ (c | d) ~ e)
end