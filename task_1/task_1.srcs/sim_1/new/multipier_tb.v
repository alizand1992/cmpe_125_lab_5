module multipier_tb;
    reg [3:0] a, b;
    wire [7:0] out;
    
    integer i, j;

    multiplier DUT(a, b, out);
    
    initial 
    begin
        for (i = 0; i < 16; i = i + 1) 
        begin
            a = i;           
            for (j = 0; j < 16; j = j + 1)
            begin   
                b = j;
                #5;
            end
        end
    end
endmodule
