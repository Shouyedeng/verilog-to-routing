/*

alu_no_jp:
	jxor: 5
	jspl: 7
	jspl3: 34
	jcb: 4
	jdff: 20
	jand: 8

Summary:
	jxor: 5
	jspl: 7
	jspl3: 34
	jcb: 4
	jdff: 20
	jand: 8
*/

`timescale  1ps  /  100fs
module alu_no_jp(gclk, X, Y, Carry_in, End, Cmpl_X, Cmpl_Y, Op_XOR, Op_AND, Op_ARITH, Carry_out, Overflow, Sum);
	input gclk;
	input X;
	input Y;
	input Carry_in;
	input End;
	input Cmpl_X;
	input Cmpl_Y;
	input Op_XOR;
	input Op_AND;
	input Op_ARITH;
	output Carry_out;
	output Overflow;
	output Sum;
	wire [10:0] dj0;
	wire [8:0] dj1;
	wire [12:0] dj2;
	wire [5:0] dj3;
	wire [14:0] dj4;
	wire [2:0] w_gclk_0;
	wire [2:0] w_gclk_1;
	wire [2:0] w_gclk_2;
	wire [2:0] w_gclk_3;
	wire [2:0] w_gclk_4;
	wire [2:0] w_gclk_5;
	wire [2:0] w_gclk_6;
	wire [2:0] w_gclk_7;
	wire [2:0] w_gclk_8;
	wire [2:0] w_gclk_9;
	wire [2:0] w_gclk_10;
	wire [2:0] w_gclk_11;
	wire [2:0] w_gclk_12;
	wire [2:0] w_gclk_13;
	wire [2:0] w_gclk_14;
	wire [2:0] w_gclk_15;
	wire [2:0] w_clk_0;
	wire [2:0] w_clk_1;
	wire [2:0] w_clk_2;
	wire [2:0] w_clk_3;
	wire [2:0] w_clk_4;
	wire [2:0] w_clk_5;
	wire [2:0] w_clk_6;
	wire [2:0] w_clk_7;
	wire [2:0] w_clk_8;
	wire [2:0] w_clk_9;
	wire [2:0] w_clk_10;
	wire [2:0] w_clk_11;
	wire [2:0] w_clk_12;
	wire [2:0] w_clk_13;
	wire [2:0] w_clk_14;
	wire [2:0] w_clk_15;
	jdff dff_0_0(.din(Carry_in),.dout(dj0[0]),.clk(w_clk_15[2]),.clk(w_gclk_5[0]));
	jdff dff_0_1(.din(End),.dout(dj0[1]),.clk(w_clk_15[1]),.clk(w_gclk_5[1]));
	jxor xor_0_0(.dina(Y),.dinb(Cmpl_Y),.dout(dj0[2]),.clk(w_clk_15[0]),.clk(w_gclk_5[2]));
	jxor xor_0_1(.dina(X),.dinb(Cmpl_X),.dout(dj0[3]),.clk(w_clk_14[2]),.clk(w_gclk_6[0]));
	jdff dff_0_2(.din(Op_XOR),.dout(dj0[4]),.clk(w_clk_14[1]),.clk(w_gclk_6[1]));
	jdff dff_0_3(.din(Op_AND),.dout(dj0[5]),.clk(w_clk_14[0]),.clk(w_gclk_6[2]));
	jdff dff_0_4(.din(Op_ARITH),.dout(dj0[6]),.clk(w_clk_13[2]),.clk(w_gclk_7[0]));
	jspl spl_0_0(.din(dj0[2]),.douta(dj0[7]),.doutb(dj0[8]));
	jspl spl_0_1(.din(dj0[3]),.douta(dj0[9]),.doutb(dj0[10]));
	jdff dff_1_0(.din(dj0[0]),.dout(dj1[0]),.clk(w_clk_13[1]),.clk(w_gclk_7[1]));
	jdff dff_1_1(.din(dj0[1]),.dout(dj1[1]),.clk(w_clk_13[0]),.clk(w_gclk_7[2]));
	jand and_1_0(.dina(dj0[7]),.dinb(dj0[9]),.dout(dj1[2]),.clk(w_clk_12[2]),.clk(w_gclk_8[0]));
	jxor xor_1_0(.dina(dj0[8]),.dinb(dj0[10]),.dout(dj1[3]),.clk(w_clk_12[1]),.clk(w_gclk_8[1]));
	jdff dff_1_2(.din(dj0[4]),.dout(dj1[4]),.clk(w_clk_12[0]),.clk(w_gclk_8[2]));
	jdff dff_1_3(.din(dj0[5]),.dout(dj1[5]),.clk(w_clk_11[2]),.clk(w_gclk_9[0]));
	jdff dff_1_4(.din(dj0[6]),.dout(dj1[6]),.clk(w_clk_11[1]),.clk(w_gclk_9[1]));
	jspl spl_1_0(.din(dj1[2]),.douta(dj1[7]),.doutb(dj1[8]));
	jdff dff_2_0(.din(dj1[0]),.dout(dj2[0]),.clk(w_clk_11[0]),.clk(w_gclk_9[2]));
	jdff dff_2_1(.din(dj1[1]),.dout(dj2[1]),.clk(w_clk_10[2]),.clk(w_gclk_10[0]));
	jand and_2_0(.dina(dj1[6]),.dinb(dj1[7]),.dout(dj2[2]),.clk(w_clk_10[1]),.clk(w_gclk_10[1]));
	jand and_2_1(.dina(dj1[5]),.dinb(dj1[8]),.dout(dj2[3]),.clk(w_clk_10[0]),.clk(w_gclk_10[2]));
	jand and_2_2(.dina(dj1[4]),.dinb(dj1[3]),.dout(dj2[4]),.clk(w_clk_9[2]),.clk(w_gclk_11[0]));
	jspl spl_2_0(.din(dj2[1]),.douta(dj2[5]),.doutb(dj2[6]));
	jspl spl_2_1(.din(dj2[2]),.douta(dj2[7]),.doutb(dj2[8]));
	jcb cb_2_0(.dina(dj2[3]),.dinb(dj2[4]),.dout(dj2[9]));
	jspl3 spl3_2_0(.din(dj2[9]),.douta(dj2[10]),.doutb(dj2[11]),.doutc(dj2[12]));
	jand and_3_0(.dina(dj2[7]),.dinb(dj2[5]),.dout(dj3[0]),.clk(w_clk_9[1]),.clk(w_gclk_11[1]));
	jand and_3_1(.dina(dj2[10]),.dinb(dj2[6]),.dout(dj3[1]),.clk(w_clk_9[0]),.clk(w_gclk_11[2]));
	jdff dff_3_0(.din(dj2[8]),.dout(dj3[2]),.clk(w_clk_8[2]),.clk(w_gclk_12[0]));
	jdff dff_3_1(.din(dj2[11]),.dout(dj3[3]),.clk(w_clk_8[1]),.clk(w_gclk_12[1]));
	jdff dff_3_2(.din(dj2[12]),.dout(dj3[4]),.clk(w_clk_8[0]),.clk(w_gclk_12[2]));
	jcb cb_3_0(.dina(dj3[0]),.dinb(dj2[0]),.dout(dj3[5]));
	jdff dff_4_0(.din(dj3[5]),.dout(dj4[0]),.clk(w_clk_7[2]),.clk(w_gclk_13[0]));
	jand and_4_0(.dina(dj3[1]),.dinb(dj4[3]),.dout(dj4[1]),.clk(w_clk_7[1]),.clk(w_gclk_13[1]));
	jcb cb_4_0(.dina(dj4[0]),.dinb(dj4[1]),.dout(dj4[2]));
	jspl3 spl3_4_0(.din(dj4[2]),.douta(dj4[3]),.doutb(dj4[4]),.doutc(dj4[5]));
	jdff dff_4_1(.din(dj3[2]),.dout(dj4[6]),.clk(w_clk_7[0]),.clk(w_gclk_13[2]));
	jand and_4_1(.dina(dj3[3]),.dinb(dj4[4]),.dout(dj4[7]),.clk(w_clk_6[2]),.clk(w_gclk_14[0]));
	jdff dff_4_2(.din(dj3[4]),.dout(dj4[8]),.clk(w_clk_6[1]),.clk(w_gclk_14[1]));
	jdff dff_4_3(.din(dj4[5]),.dout(dj4[9]),.clk(w_clk_6[0]),.clk(w_gclk_14[2]));
	jcb cb_4_1(.dina(dj4[6]),.dinb(dj4[7]),.dout(dj4[10]));
	jspl spl_4_0(.din(dj4[10]),.douta(dj4[11]),.doutb(dj4[12]));
	jspl spl_4_1(.din(dj4[9]),.douta(dj4[13]),.doutb(dj4[14]));
	jdff dff_5_0(.din(dj4[11]),.dout(Carry_out),.clk(w_clk_5[2]),.clk(w_gclk_15[0]));
	jxor xor_5_0(.dina(dj4[12]),.dinb(dj4[13]),.dout(Overflow),.clk(w_clk_5[1]),.clk(w_gclk_15[1]));
	jxor xor_5_1(.dina(dj4[8]),.dinb(dj4[14]),.dout(Sum),.clk(w_clk_5[0]),.clk(w_gclk_15[2]));
	jspl3 jspl3_w_gclk_0(.douta(w_gclk_0[0]),.doutb(w_gclk_0[1]),.doutc(w_gclk_0[2]),.din(gclk));
	jspl3 jspl3_w_gclk_1(.douta(w_gclk_1[0]),.doutb(w_gclk_1[1]),.doutc(w_gclk_1[2]),.din(w_gclk_0[0]));
	jspl3 jspl3_w_gclk_2(.douta(w_gclk_2[0]),.doutb(w_gclk_2[1]),.doutc(w_gclk_2[2]),.din(w_gclk_0[1]));
	jspl3 jspl3_w_gclk_3(.douta(w_gclk_3[0]),.doutb(w_gclk_3[1]),.doutc(w_gclk_3[2]),.din(w_gclk_0[2]));
	jspl3 jspl3_w_gclk_4(.douta(w_gclk_4[0]),.doutb(w_gclk_4[1]),.doutc(w_gclk_4[2]),.din(w_gclk_1[0]));
	jspl3 jspl3_w_gclk_5(.douta(w_gclk_5[0]),.doutb(w_gclk_5[1]),.doutc(w_gclk_5[2]),.din(w_gclk_1[1]));
	jspl3 jspl3_w_gclk_6(.douta(w_gclk_6[0]),.doutb(w_gclk_6[1]),.doutc(w_gclk_6[2]),.din(w_gclk_1[2]));
	jspl3 jspl3_w_gclk_7(.douta(w_gclk_7[0]),.doutb(w_gclk_7[1]),.doutc(w_gclk_7[2]),.din(w_gclk_2[0]));
	jspl3 jspl3_w_gclk_8(.douta(w_gclk_8[0]),.doutb(w_gclk_8[1]),.doutc(w_gclk_8[2]),.din(w_gclk_2[1]));
	jspl3 jspl3_w_gclk_9(.douta(w_gclk_9[0]),.doutb(w_gclk_9[1]),.doutc(w_gclk_9[2]),.din(w_gclk_2[2]));
	jspl3 jspl3_w_gclk_10(.douta(w_gclk_10[0]),.doutb(w_gclk_10[1]),.doutc(w_gclk_10[2]),.din(w_gclk_3[0]));
	jspl3 jspl3_w_gclk_11(.douta(w_gclk_11[0]),.doutb(w_gclk_11[1]),.doutc(w_gclk_11[2]),.din(w_gclk_3[1]));
	jspl3 jspl3_w_gclk_12(.douta(w_gclk_12[0]),.doutb(w_gclk_12[1]),.doutc(w_gclk_12[2]),.din(w_gclk_3[2]));
	jspl3 jspl3_w_gclk_13(.douta(w_gclk_13[0]),.doutb(w_gclk_13[1]),.doutc(w_gclk_13[2]),.din(w_gclk_4[0]));
	jspl3 jspl3_w_gclk_14(.douta(w_gclk_14[0]),.doutb(w_gclk_14[1]),.doutc(w_gclk_14[2]),.din(w_gclk_4[1]));
	jspl3 jspl3_w_gclk_15(.douta(w_gclk_15[0]),.doutb(w_gclk_15[1]),.doutc(w_gclk_15[2]),.din(w_gclk_4[2]));
	jspl3 jspl3_w_clk_0(.douta(w_clk_0[0]),.doutb(w_clk_0[1]),.doutc(w_clk_0[2]),.din(clk));
	jspl3 jspl3_w_clk_1(.douta(w_clk_1[0]),.doutb(w_clk_1[1]),.doutc(w_clk_1[2]),.din(w_clk_0[0]));
	jspl3 jspl3_w_clk_2(.douta(w_clk_2[0]),.doutb(w_clk_2[1]),.doutc(w_clk_2[2]),.din(w_clk_0[1]));
	jspl3 jspl3_w_clk_3(.douta(w_clk_3[0]),.doutb(w_clk_3[1]),.doutc(w_clk_3[2]),.din(w_clk_0[2]));
	jspl3 jspl3_w_clk_4(.douta(w_clk_4[0]),.doutb(w_clk_4[1]),.doutc(w_clk_4[2]),.din(w_clk_1[0]));
	jspl3 jspl3_w_clk_5(.douta(w_clk_5[0]),.doutb(w_clk_5[1]),.doutc(w_clk_5[2]),.din(w_clk_1[1]));
	jspl3 jspl3_w_clk_6(.douta(w_clk_6[0]),.doutb(w_clk_6[1]),.doutc(w_clk_6[2]),.din(w_clk_1[2]));
	jspl3 jspl3_w_clk_7(.douta(w_clk_7[0]),.doutb(w_clk_7[1]),.doutc(w_clk_7[2]),.din(w_clk_2[0]));
	jspl3 jspl3_w_clk_8(.douta(w_clk_8[0]),.doutb(w_clk_8[1]),.doutc(w_clk_8[2]),.din(w_clk_2[1]));
	jspl3 jspl3_w_clk_9(.douta(w_clk_9[0]),.doutb(w_clk_9[1]),.doutc(w_clk_9[2]),.din(w_clk_2[2]));
	jspl3 jspl3_w_clk_10(.douta(w_clk_10[0]),.doutb(w_clk_10[1]),.doutc(w_clk_10[2]),.din(w_clk_3[0]));
	jspl3 jspl3_w_clk_11(.douta(w_clk_11[0]),.doutb(w_clk_11[1]),.doutc(w_clk_11[2]),.din(w_clk_3[1]));
	jspl3 jspl3_w_clk_12(.douta(w_clk_12[0]),.doutb(w_clk_12[1]),.doutc(w_clk_12[2]),.din(w_clk_3[2]));
	jspl3 jspl3_w_clk_13(.douta(w_clk_13[0]),.doutb(w_clk_13[1]),.doutc(w_clk_13[2]),.din(w_clk_4[0]));
	jspl3 jspl3_w_clk_14(.douta(w_clk_14[0]),.doutb(w_clk_14[1]),.doutc(w_clk_14[2]),.din(w_clk_4[1]));
	jspl3 jspl3_w_clk_15(.douta(w_clk_15[0]),.doutb(w_clk_15[1]),.doutc(w_clk_15[2]),.din(w_clk_4[2]));
endmodule

