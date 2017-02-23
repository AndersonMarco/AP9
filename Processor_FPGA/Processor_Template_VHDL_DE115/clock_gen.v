module  clock_gen (clk_out);
   reg clk;   
   output reg clk_out;   
   initial clk=0;
   always begin
	clk_out=clk;
	#20000 clk=~clk;
	
   end	
endmodule //
