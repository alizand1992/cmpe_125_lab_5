module multiplier_fpga(
        input  wire clk100MHz, 
        input  wire clkb, 
        input  wire rst,
        input  wire [3:0] a,
        input  wire [3:0] b,
        output wire [7:0] out
);
    wire clk_5KHz;
    wire db_rs;
    wire db_clk;

    clk_gen CLK (
        .clk100MHz  (clk100MHz), 
        .rst        (rst), 
        .clk_4sec   (DONT_USE),
        .clk_5KHz   (clk_5KHz)
    );
    
    button_debouncer db1 (.clk(clk_5KHz), .button(clkb), .debounced_button(db_clk));
    
    multiplier m (.a(a), .b(b), .clk(db_clk), .rst(rst), .out(out)); 
        
endmodule
