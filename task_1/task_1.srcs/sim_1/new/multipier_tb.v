module multipier_tb;
    reg [3:0] a, b;
    wire [7:0] out;
    reg clk, rst;
    
    integer i, j, error;

    multiplier DUT(a, b, clk, rst, out);
    
    initial 
    begin
        clk = 1;
        rst = 0;
        error = 0;
        for (i = 0; i < 16; i = i + 1) 
        begin
            a <= i;           
            for (j = 0; j < 16; j = j + 1)
            begin   
                b <= j;
                #4;
                if (out != a * b)
                    error = error + 1;
            end
        end
        
        if (error != 0) 
            $display("There are %d errors.\n", error);
    end
    
    always #2 clk = ~clk;
endmodule
