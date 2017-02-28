`define loadInstruction \
casex(stage) \
  8'h01: begin \
     bus_RAM_ADDRESS=PC;\
     data_debug= 16'h0000;\
  end \
  8'h02: begin \
     processing_instruction=1'b1; \
     IR=bus_RAM_DATA_OUT; \
     PC=PC+1'b1; \
     stage=1'b0; \
     data_debug= 16'hffff;\
  end \
endcase
