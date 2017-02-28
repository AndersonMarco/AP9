`define instruction_load \
casex(stage) \
  8'h01: begin \
     bus_RAM_ADDRESS=PC;\
  end \
  8'h02: begin \
     END=bus_RAM_DATA_OUT; \
     PC=PC+1;     \
   end \
  8'h03: begin \
      bus_RAM_ADDRESS=END;\
  end \
  8'h04: begin \
     case (IR[9:7]) \
       8'h00: Rn[0]=bus_RAM_DATA_OUT; \
       8'h01: Rn[1]=bus_RAM_DATA_OUT; \
       8'h02: Rn[2]=bus_RAM_DATA_OUT; \
       8'h03: Rn[3]=bus_RAM_DATA_OUT; \
       8'h04: Rn[4]=bus_RAM_DATA_OUT; \
       8'h05: Rn[5]=bus_RAM_DATA_OUT; \
       8'h06: Rn[6]=bus_RAM_DATA_OUT; \
       8'h07: Rn[7]=bus_RAM_DATA_OUT; \
     endcase \
     processing_instruction=1'b0;\
     stage=8'h00;\
  end \
endcase
