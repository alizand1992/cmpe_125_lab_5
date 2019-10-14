module multiplier(input [3:0] a, b, input clk, rst, output reg [7:0] out);

    reg [7:0] w_pp1;
    reg [7:0] w_pp2;
    reg [7:0] w_pp3;
    reg [7:0] w_pp4;
    
    reg [7:0] w_cla1;
    reg [7:0] w_cla2;
    
    pp pp1(.a(a), .b(b[0]), .shift(2'b00));
    pp pp2(.a(a), .b(b[1]), .shift(2'b01));
    pp pp3(.a(a), .b(b[2]), .shift(2'b10));
    pp pp4(.a(a), .b(b[3]), .shift(2'b11));
    
    cla8 cla1 (.a(w_pp1), .b(w_pp2), .cin(1'b0));
    cla8 cla2 (.a(w_pp4), .b(w_pp3), .cin(1'b0));
    cla8 cla3 (.a(cla1.sum), .b(cla2.sum), .cin(1'b0));
    
    always@(posedge clk, posedge rst)
    begin
        w_pp1 = pp1.out;  
        w_pp2 = pp2.out;
        w_pp3 = pp3.out;
        w_pp4 = pp4.out;
        
        w_cla1 = cla1.sum;
        w_cla2 = cla2.sum;
        
        out = cla3.sum;
    end
endmodule
