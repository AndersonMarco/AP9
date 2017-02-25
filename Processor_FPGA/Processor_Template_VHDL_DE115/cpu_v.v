module  cpu_v(bus_RAM_ADDRESS, wire_clock, bus_RAM_DATA_OUT, wire_RW, bus_RAM_DATA_IN,data_debug);
   output reg [15:0] bus_RAM_ADDRESS;
   input wire        wire_clock;   
   input wire  [15:0] bus_RAM_DATA_OUT;
   output reg  wire_RW;
   output reg   [15:0] bus_RAM_DATA_IN;
   output reg   [15:0] data_debug;
   reg [7:0] stage;
   reg       processing_instruction;
   reg [15:0] instruction;
   
   initial begin
      stage=8'h00;
      processing_instruction=1'b0;
      wire_RW=1'b0;    
      data_debug=16'h0000;  
   end
   always @ (posedge wire_clock) begin    
      if(processing_instruction == 1'b0) begin
         stage=stage+8'h01;
         casex(stage) 
           8'h01: begin
              data_debug=instruction;
              processing_instruction=1'b1;
              stage=8'h00;              
           end        
         endcase
      end else begin       
        stage=stage+8'h01;
        casex(stage)
          8'h01: begin
             bus_RAM_ADDRESS=16'h0000;           
          end
          8'h02: begin
             instruction=bus_RAM_DATA_OUT;
             processing_instruction=1;
             data_debug=bus_RAM_DATA_OUT;             
             stage=0;           
          end        
        endcase
      end 
   end 

   
endmodule 
