module multipier_tb;
    reg [7:0] out;
    multiplier m(.a(4'b0001), .b(4'b0001));
    always@(*)
    begin
        out = m.out;
        #100;
    end
endmodule
