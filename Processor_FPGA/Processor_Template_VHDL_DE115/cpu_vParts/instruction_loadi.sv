`define instruction_loadi
casex(stage) \
  8'h01: begin \
      case (IR[9:7]) \
       8'h00: Rx=Rn[0]; \
       8'h01: bus_RAM_DATA_IN=Rn[1]; \
       8'h02: bus_RAM_DATA_IN=Rn[2]; \
       8'h03: bus_RAM_DATA_IN=Rn[3]; \
       8'h04: bus_RAM_DATA_IN=Rn[4]; \
       8'h05: bus_RAM_DATA_IN=Rn[5]; \
       8'h06: bus_RAM_DATA_IN=Rn[6]; \
       8'h07: bus_RAM_DATA_IN=Rn[7]; \
      endcase \
     
  end \
