module multipier_tb;
    reg [3:0] a, b;
    wire [7:0] out;
    
    integer i, j, error;

    multiplier DUT(a, b, out);
    
    initial 
    begin
        error = 0;
        for (i = 0; i < 16; i = i + 1) 
        begin
            a = i;           
            for (j = 0; j < 16; j = j + 1)
            begin   
                b = j;
                #5;
                if (out != a * b)
                    error = error + 1;
            end
        end
        
        if (error != 0) 
            $display("There are %d errors.\n", error);
    end
endmodule
