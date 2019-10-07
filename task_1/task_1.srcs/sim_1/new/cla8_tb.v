module cla8_tb;
    reg [7:0] a, b;
    reg cin;
    wire [7:0] sum;
    wire cout;
    integer i, j;
    
    cla8 DUT(a, b, cin, sum, cout);
    
    initial
    begin
        i = 4;
        j = 5;
        assign cin = 1'b0;
        
        a = i;
        b = j;
    end
endmodule
