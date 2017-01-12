/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第2章       */
/* project: blink       */
/* outline: LED点滅回路 */

module blink (
    input               CLK,
    input               RST,
    output  reg [3:0]   LED
);

/* システムクロックを分周 */
reg [22:0] cnt23;

always @( posedge CLK ) begin
    if ( RST )
        cnt23 <= 23'h0;
    else
        cnt23 <= cnt23 + 1'h1;
end

wire ledcnten = (cnt23==23'h7fffff);

/* LED用6進カウンタ */
reg [2:0] cnt3;

always @( posedge CLK ) begin
    if ( RST )
        cnt3 <= 3'h0;
    else if ( ledcnten )
        if ( cnt3==3'd5)
            cnt3 <=3'h0;
        else
            cnt3 <= cnt3 + 1'h1;
end

/* LEDデコーダ */
always @* begin
    case ( cnt3 )
        3'd0:   LED = 4'b0001;
        3'd1:   LED = 4'b0010;
        3'd2:   LED = 4'b0100;
        3'd3:   LED = 4'b1000;
        3'd4:   LED = 4'b0100;
        3'd5:   LED = 4'b0010;
        default:LED = 4'b0000;
    endcase
end

endmodule
