module kit_v(clock__50Mhz, wire_clock_50Mhz, wire_clock_25Mhz, wire_clock_1Mhz, wire_clock_1KHz,bus_RAM_ADDRESS,bus_RAM_DATA_OUT, wire_RW,bus_RAM_DATA_IN, data_debug);
   //wire clocks =======================================================
   output wire clock__50Mhz;
   output wire wire_clock_50Mhz;
   output wire wire_clock_25Mhz;
   output wire wire_clock_1Mhz;
   output wire wire_clock_1KHz;
   //end================================================================

   //wire to ram========================================================
   output wire [15:0] bus_RAM_ADDRESS;
   output wire [15:0] bus_RAM_DATA_OUT;
   output wire        wire_RW;
   output wire [15:0] bus_RAM_DATA_IN;   
   //end================================================================

   output wire [15:0] data_debug;

   
   wire              clock_50Mhz_priv;
   wire              wire_clock_50Mhz_priv;
   wire              wire_clock_25Mhz_priv;
   wire              wire_clock_1MHz_priv;   
   wire              wire_clock_1KHz_priv;


   wire [15:0]       bus_RAM_ADDRESS_priv;  
   wire [15:0]       bus_RAM_DATA_OUT_priv;
   wire              wire_RW_priv;
   wire [15:0]       data_debug_priv;
   
   //clock init========================================================
   clock_gen clock_gen_dut(clock_50Mhz_priv);
   clock_divider  clock_manager_dut(clock_50Mhz_priv,wire_clock_50Mhz_priv,wire_clock_25Mhz_priv,wire_clock_1MHz_priv,wire_clock_1KHz_priv);
   
   //end================================================================


   ram ram_dut(bus_RAM_ADDRESS_priv, wire_clock_50Mhz_priv,bus_RAM_DATA_IN ,wire_RW_priv, bus_RAM_DATA_OUT_priv);
   cpu_v cpu_v_dut(bus_RAM_ADDRESS_priv, wire_clock_1MHz_priv, bus_RAM_DATA_OUT_priv, wire_RW_priv, bus_RAM_DATA_IN,data_debug_priv);
   assign  bus_RAM_ADDRESS=bus_RAM_ADDRESS_priv;
   assign  wire_clock_50Mhz=wire_clock_50Mhz_priv;
	assign  wire_clock_25Mhz=wire_clock_25Mhz_priv;
	assign  wire_clock_1Mhz=wire_clock_1MHz_priv;
	assign  wire_clock_1KHz=wire_clock_1KHz_priv;	
   assign  bus_RAM_DATA_OUT=bus_RAM_DATA_OUT_priv;
   assign  wire_RW=wire_RW_priv;
   assign  bus_RAM_DATA_IN_priv=bus_RAM_DATA_IN;
	assign  bus_RAM_ADDRESS=bus_RAM_ADDRESS_priv;
   assign  data_debug = data_debug_priv ;
   assign  clock__50Mhz=clock_50Mhz_priv;
   
   
endmodule

   
