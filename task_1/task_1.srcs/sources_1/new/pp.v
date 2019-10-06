module pp(input [3:0] a, input b, input [1:0] shift, output reg [7:0] out);
    always@(*) 
    begin
        if (b == 0)
        begin 
            out = 8'b0;
        end
        else
        begin
            out = a;
            out = out << shift;
        end
    end
endmodule
