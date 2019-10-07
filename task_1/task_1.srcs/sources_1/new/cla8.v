module cla8(input [7:0] a, b, input cin, output wire [7:0] sum, output wire cout);
    cla cla_right (.a({a[3:0]}), .b({b[3:0]}), .cin(cin));
    cla cla_left (.a({a[7:4]}), .b({b[7:4]}), .cin(cla_right.cout));
    
    assign cout = cla_left.cout;
    assign sum = {cla_left.sum, cla_right.sum};
endmodule
