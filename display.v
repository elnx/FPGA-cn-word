module display (
	i_clk,
	i_data,
	o_row_n,
	o_col_n
);

input i_clk;
input [255:0] i_data;
output [15:0] o_row_n;
output [15:0] o_col_n;

reg [3:0] scan_count; // 0~15 
reg [15:0] row_reg;
reg [15:0] col_reg;

assign o_row_n = ~row_reg; 
assign o_col_n = ~col_reg;

always @ (posedge i_clk) begin

	if (scan_count == 4'd15) begin
		scan_count <= 4'd0;
	end else begin
		scan_count <= scan_count + 4'd1;
	end

	case (scan_count) 
		4'd0: begin
			row_reg <= 16'b0000_0000_0000_0001;
			col_reg <= i_data[15:0];
		end
		4'd1: begin
			row_reg <= 16'b0000_0000_0000_0010;
			col_reg <= i_data[31:16];
		end
		4'd2: begin
			row_reg <= 16'b0000_0000_0000_0100;
			col_reg <= i_data[47:32];
		end
		4'd3: begin
			row_reg <= 16'b0000_0000_0000_1000;
			col_reg <= i_data[63:48];
		end
		4'd4: begin
			row_reg <= 16'b0000_0000_0001_0000;
			col_reg <= i_data[79:64];
		end
		4'd5: begin
			row_reg <= 16'b0000_0000_0010_0000;
			col_reg <= i_data[95:80];
		end
		4'd6: begin
			row_reg <= 16'b0000_0000_0100_0000;
			col_reg <= i_data[111:96];
		end
		4'd7: begin
			row_reg <= 16'b0000_0000_1000_0000;
			col_reg <= i_data[127:112];
		end
		4'd8: begin
			row_reg <= 16'b0000_0001_0000_0000;
			col_reg <= i_data[143:128];
		end
		4'd9: begin
			row_reg <= 16'b0000_0010_0000_0000;
			col_reg <= i_data[159:144];
		end
		4'd10: begin
			row_reg <= 16'b0000_0100_0000_0000;
			col_reg <= i_data[175:160];
		end
		4'd11: begin
			row_reg <= 16'b0000_1000_0000_0000;
			col_reg <= i_data[191:176];
		end
		4'd12: begin
			row_reg <= 16'b0001_0000_0000_0000;
			col_reg <= i_data[207:192];
		end
		4'd13: begin
			row_reg <= 16'b0010_0000_0000_0000;
			col_reg <= i_data[223:208];
		end
		4'd14: begin
			row_reg <= 16'b0100_0000_0000_0000;
			col_reg <= i_data[239:224];
		end
		4'd15: begin
			row_reg <= 16'b1000_0000_0000_0000;
			col_reg <= i_data[255:240];
		end
		
	endcase
	
	
end

endmodule
