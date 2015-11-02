module scroll ( 
	clk,
	i_row,
	o_addr,
	o_buffer
);
input clk;
input [15:0] i_row;
output [5:0] o_addr;
output [255:0] o_buffer;

reg [3:0] addr_counter;
reg [5:0] pos;
reg [5:0] addr;
reg [15:0] buffer [15:0];
reg clk_16Hz;
reg [31:0] clk_16Hz_count;
//assign o_buffer[16:0] = buffer[0];
//assign o_buffer[32:16] = buffer[1];
//assign o_buffer[48:32] = buffer[2];
//assign o_buffer[64:48] = buffer[3];
//assign o_buffer[80:64] = buffer[4];
//assign o_buffer[96:80] = buffer[5];
//assign o_buffer[112:96] = buffer[6];
//assign o_buffer[128:112] = buffer[7];
//assign o_buffer[144:128] = buffer[8];
//assign o_buffer[160:144] = buffer[9];
//assign o_buffer[176:160] = buffer[10];
//assign o_buffer[192:176] = buffer[11];
//assign o_buffer[208:192] = buffer[12];
//assign o_buffer[224:208] = buffer[13];
//assign o_buffer[240:224] = buffer[14];
//assign o_buffer[256:240] = buffer[15];
assign o_buffer = {buffer[15], buffer[14], buffer[13], buffer[12], buffer[11], buffer[10], buffer[9], buffer[8], buffer[7], buffer[6], buffer[5], buffer[4], buffer[3], buffer[2], buffer[1], buffer[0]};
assign o_addr = addr;

always @ (posedge clk_16Hz) begin
	if (pos == 6'd63)
		pos <= 6'd0;
	else 
		pos <= pos + 6'd1;
end

always @ (posedge clk) begin
	if (addr_counter == 4'd15) begin
		addr_counter <= 4'd0;
		addr <= pos;
	end	else begin
		addr_counter <= addr_counter + 4'd1;
		addr <= addr + 6'd1;
	end
	buffer[addr_counter] <= i_row;
end

always @ (posedge clk) begin
	clk_16Hz_count <= clk_16Hz_count + 1'b1;
	if (clk_16Hz_count == 1499999) begin
		clk_16Hz <= ~clk_16Hz;
		clk_16Hz_count <= 32'b0;
	end
end

endmodule
