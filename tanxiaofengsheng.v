module tanxiaofengsheng (
	i_addr,
	o_row
);

input [5:0] i_addr; // 63 11_1111
output [15:0] o_row ;
reg [15:0] o_row;
always @ (i_addr) begin
	case (i_addr)
		6'd0: o_row = 16'h0040;
		6'd1: o_row = 16'h4040;
		6'd2: o_row = 16'h3248;
		6'd3: o_row = 16'h1150;
		6'd4: o_row = 16'h00A0;
		6'd5: o_row = 16'h0090;
		6'd6: o_row = 16'hF10E;
		6'd7: o_row = 16'h1644;
		6'd8: o_row = 16'h1040;
		6'd9: o_row = 16'h1248;
		6'd10: o_row = 16'h1150;
		6'd11: o_row = 16'h10A0;
		6'd12: o_row = 16'h14A0;
		6'd13: o_row = 16'h1910;
		6'd14: o_row = 16'h120E;
		6'd15: o_row = 16'h0404;
		6'd16: o_row = 16'h1040;
		6'd17: o_row = 16'h1248;
		6'd18: o_row = 16'h1F7C;
		6'd19: o_row = 16'h28A0;
		6'd20: o_row = 16'h4510;
		6'd21: o_row = 16'h00F8;
		6'd22: o_row = 16'h3F00;
		6'd23: o_row = 16'h0100;
		6'd24: o_row = 16'h0104;
		6'd25: o_row = 16'hFFFE;
		6'd26: o_row = 16'h0200;
		6'd27: o_row = 16'h0280;
		6'd28: o_row = 16'h0440;
		6'd29: o_row = 16'h0830;
		6'd30: o_row = 16'h100E;
		6'd31: o_row = 16'h6004;
		6'd32: o_row = 16'h0010;
		6'd33: o_row = 16'h3FF8;
		6'd34: o_row = 16'h2010;
		6'd35: o_row = 16'h2850;
		6'd36: o_row = 16'h2450;
		6'd37: o_row = 16'h2290;
		6'd38: o_row = 16'h2290;
		6'd39: o_row = 16'h2110;
		6'd40: o_row = 16'h2110;
		6'd41: o_row = 16'h2290;
		6'd42: o_row = 16'h2290;
		6'd43: o_row = 16'h2450;
		6'd44: o_row = 16'h2850;
		6'd45: o_row = 16'h3012;
		6'd46: o_row = 16'h400A;
		6'd47: o_row = 16'h8006;
		6'd48: o_row = 16'h0100;
		6'd49: o_row = 16'h1100;
		6'd50: o_row = 16'h1100;
		6'd51: o_row = 16'h1108;
		6'd52: o_row = 16'h3FFC;
		6'd53: o_row = 16'h2100;
		6'd54: o_row = 16'h4100;
		6'd55: o_row = 16'h4100;
		6'd56: o_row = 16'h8110;
		6'd57: o_row = 16'h3FF8;
		6'd58: o_row = 16'h0100;
		6'd59: o_row = 16'h0100;
		6'd60: o_row = 16'h0100;
		6'd61: o_row = 16'h0104;
		6'd62: o_row = 16'hFFFE;
		6'd63: o_row = 16'h0000;
	endcase
	
end
endmodule
