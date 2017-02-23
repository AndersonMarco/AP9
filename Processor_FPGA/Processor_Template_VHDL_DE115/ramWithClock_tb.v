module ramWithClock_tb;
   wire clock_50Mhz;
   //wire clock_50Mhz;
   //wire clock_25Mhz;
   //wire clock_1MHz;
   //wire clock_1KHz;
   //clock_manager clock_manager_dut();
   clock_gen dut(clock_50Mhz);
	initial
begin
   $display("clock = %x",clock_50Mhz);#10000
	$stop;
   end
   
endmodule
