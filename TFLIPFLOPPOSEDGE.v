module TFLIPFLOPPOSEDGE( input clk, rst_n, input t,
output reg q,
output q_bar
);
always@(posedge clk) 
begin 
  if(!rst_n)
  q<=0;
  else
  if(t)
  q<=~q;
  else
  q<=q;
  end
  assign q_bar = ~q;
  endmodule
