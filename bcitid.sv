// File: bcitid.sv
// Description: A memory module to hold and display the last four digits of a BCIT student ID. 
//					The module outputs one digit based on the input digit..
// Author: Mikhail Rego, with the help of open-AI
// Date: 2025-01-20


module bcitid (
  input  logic [1:0] digit,				// 2-bit input (which digit to output)
  output logic [3:0] idnum					// 4-bit output (digit value)
);
logic [15:0] bcit_mem;						// 4x4-bit memory
initial begin
    bcit_mem = 16'h1119;					// Replace with your BCIT student ID last 4 digits... 2^4 = 16-bit
  end
always_comb begin
    case (digit)								// aachaa
      2'b00: idnum = bcit_mem[3:0];		// Rightmost digit
      2'b01: idnum = bcit_mem[7:4];		// Second digit
      2'b10: idnum = bcit_mem[11:8];	// Third digit
      2'b11: idnum = bcit_mem[15:12];	// Leftmost digit
      default: idnum = 4'b0000;
    endcase
  end
endmodule

