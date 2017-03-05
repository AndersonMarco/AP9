`define instruction_outchar \
casex(stage) \
  8'h01: begin \
     bus_vga_pos=Rn[IR[6:4]]; \
     bus_vga_char= Rn[IR[9:7]]; \
  end \
  8'h02: begin \
     videoflag=1'b1; \
  end \
  8'h03: begin \
     videoflag=1'b0; \
     processing_instruction=1'b0; \
     resetStage=1'b1; \
  end \
endcase
