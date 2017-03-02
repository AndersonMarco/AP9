`include "cpu_vParts/loadInstruction.sv"
`include "cpu_vParts/instruction_load.sv"
`include "cpu_vParts/instruction_store.sv"
`include "cpu_vParts/instruction_storei.sv"
`include "cpu_vParts/instruction_loadi.sv"

module  cpu_v(bus_RAM_ADDRESS, wire_clock, bus_RAM_DATA_OUT, wire_RW, bus_RAM_DATA_IN,data_debug);
   output reg [15:0] bus_RAM_ADDRESS;
   input wire        wire_clock;   
   input wire  [15:0] bus_RAM_DATA_OUT;
   output reg  wire_RW;
   output reg   [15:0] bus_RAM_DATA_IN;
   output reg   [15:0] data_debug;
   reg [7:0] stage;
   reg       processing_instruction;
   reg [15:0] IR;
   reg [15:0] PC;
   reg [31:0][31:0] Rn;
   reg [15:0] END;
	
	reg [5:0]  endReg;
	reg [15:0] dataIn;
	reg [15:0] dataOut;
	reg wr;
	reg clock;
   //selectRegisterToWrite selRxToW(endReg,Rn1,dataIn,wr);
	//selectRegisterToRead  selRxToR(endReg,Rn,dataOut,wr);
   initial begin
      stage=8'h00;
      processing_instruction=1'b0;
      wire_RW=1'b0;    
      data_debug=16'h0000;
      PC= 16'h0000;      
   end
   always @ (posedge wire_clock) begin
      stage=stage+8'h01;
      if(processing_instruction == 1'b0) begin
         `loadInstruction;
         data_debug=16'hffff;
      end else begin 
         casez(IR)   
           16'b110000??????????: begin
              data_debug=16'h0000;
              `instruction_load;
           end
           16'b110001??????????: begin
               data_debug=16'h1111;
              `instruction_store;
           end
		   16'b111101??????????: begin
               data_debug=16'haaaa;
              `instruction_storei;
           end
           16'b111100??????????: begin
               data_debug=16'hbbbb;
              `instruction_loadi;
           end
        endcase
      end 
   end 

   
endmodule 
