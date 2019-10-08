module multiplier(input [3:0] a, b, output wire [7:0] out);

    wire [7:0] w_pp1;
    wire [7:0] w_pp2;
    wire [7:0] w_pp3;
    wire [7:0] w_pp4;
    
    wire [7:0] w_cla1;
    wire [7:0] w_cla2;
    
    pp pp1(.a(a), .b(b[0]), .shift(3'b00), .out(w_pp1));
    pp pp2(.a(a), .b(b[1]), .shift(3'b01), .out(w_pp2));
    pp pp3(.a(a), .b(b[2]), .shift(3'b10), .out(w_pp3));
    pp pp4(.a(a), .b(b[3]), .shift(3'b11), .out(w_pp4));
    
    cla8 cla1 (.a(w_pp1), .b(w_pp2), .cin(1'b0), .sum(w_cla1));
    cla8 cla2 (.a(w_pp4), .b(w_pp3), .cin(1'b0), .sum(w_cla2));
    cla8 cla3 (.a(cla1.sum), .b(cla2.sum), .cin(1'b0), .sum(out));
endmodule
