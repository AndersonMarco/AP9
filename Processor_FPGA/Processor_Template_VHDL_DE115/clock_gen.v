module  clock_gen (clk_out);
   reg clk;   
   output wire clk_out;   
   initial clk=0;
	assign clk_out=clk;
   always begin
	#20000 clk=~clk;
	
   end	
endmodule //
