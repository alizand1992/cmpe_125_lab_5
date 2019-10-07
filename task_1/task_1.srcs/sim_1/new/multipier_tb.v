module multipier_tb;
    reg [3:0] a, b;
    reg [7:0] out;
    reg clk;
    
    integer i, j;

    multiplier m(.clk(clk), .a(a), .b(b));
    
    initial 
    begin
        clk = 0;
        for (i = 0; i < 16; i = i + 1) 
        begin
            a = i;           
            for (j = 0; j < 16; j = j + 1)
            begin
                b = j;
                #1;
                clk = ~clk;
                #1;
                clk = ~clk;
                out = m.out;
            end
        end
    end
endmodule
