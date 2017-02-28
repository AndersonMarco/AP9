`define instruction_store \
casex(stage) \
  8'h01: begin \
     bus_RAM_ADDRESS=PC;\
  end \
  8'h02: begin \
     END=bus_RAM_DATA_OUT; \
     PC=PC+1;\
   end \
  8'h03: begin \
      bus_RAM_ADDRESS=END;\
  end \
  8'h04: begin \
     wire_RW=1'b1;\
     case (IR[9:7]) \
       8'h00: bus_RAM_DATA_IN=Rn[0]; \
       8'h01: bus_RAM_DATA_IN=Rn[1]; \
       8'h02: bus_RAM_DATA_IN=Rn[2]; \
       8'h03: bus_RAM_DATA_IN=Rn[3]; \
       8'h04: bus_RAM_DATA_IN=Rn[4]; \
       8'h05: bus_RAM_DATA_IN=Rn[5]; \
       8'h06: bus_RAM_DATA_IN=Rn[6]; \
       8'h07: bus_RAM_DATA_IN=Rn[7]; \
     endcase \
  end \
  8'h05: begin \
     wire_RW=1'b0;\
     processing_instruction=1'b0;\
     stage=8'h00;\
  end \
endcase
