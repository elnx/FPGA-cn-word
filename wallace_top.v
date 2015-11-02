module wallace_top(
	clk,
	o_row_n,
	o_col_n
);
input clk;
output [15:0] o_row_n;
output [15:0] o_col_n;

reg clk_400Hz;
reg [15:0] clk_400Hz_count;

wire [255:0] data;
wire [5:0] addr;
wire [15:0] row;

always @ (posedge clk) begin
	clk_400Hz_count <= clk_400Hz_count + 1'b1;
	if (clk_400Hz_count == 29999) begin
		clk_400Hz <= ~clk_400Hz;
		clk_400Hz_count <= 32'b0;
	end
end

display d (
	.i_clk(clk_400Hz),
	.i_data(data),
	.o_row_n(o_row_n),
	.o_col_n(o_col_n)
);

scroll s (
	.clk(clk),
	.i_row(row),
	.o_addr(addr),
	.o_buffer(data)
);

tanxiaofengsheng t (
	.i_addr(addr),
	.o_row(row)
);

endmodule
