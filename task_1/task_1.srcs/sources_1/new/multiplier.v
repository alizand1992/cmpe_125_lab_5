module multiplier(input [3:0] a, b, output wire [7:0] out);
    pp pp1(.a(a), .b(b[0]), .shift(3'b00));
    pp pp2(.a(a), .b(b[1]), .shift(3'b01));
    pp pp3(.a(a), .b(b[2]), .shift(3'b10));
    pp pp4(.a(a), .b(b[3]), .shift(3'b11));
    
    cla8 cla1 (.a(pp1.out), .b(pp2.out), .cin(1'b0));
    cla8 cla2 (.a(pp4.out), .b(pp3.out), .cin(1'b0));
    cla8 cla3 (.a(cla1.sum), .b(cla2.sum), .cin(1'b0));
    
    assign out = cla3.sum;
endmodule
