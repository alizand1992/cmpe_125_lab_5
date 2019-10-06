module multiplier(input clk, rst, input [3:0] a, b, output [7:0] out);
    pp pp1(.a(a), .b(b[0]), .shift(3'b00));
    pp pp2(.a(a), .b(b[1]), .shift(3'b01));
    pp pp3(.a(a), .b(b[2]), .shift(3'b10));
    pp pp4(.a(a), .b(b[3]), .shift(3'b11));
    
    cla cla1 (.a(pp1.out), .b(pp2.out), .cin(1'b0));
    cla cla2 (.a(pp3.out), .b(cla1.out), .cin(1'b0));
    cla cla3 (.a(pp4.out), .b(cla2.out), .cin(1'b0));
    
    assign out = cla3.out;
endmodule