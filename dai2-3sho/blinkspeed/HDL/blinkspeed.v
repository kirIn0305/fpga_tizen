/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第2章                           */
/* project: blinkspeed                      */
/* outline: LEDの点滅速度をプッシュSWで制御 */

module blinkspeed (
    input               CLK,
    input               RST,
    input       [1:0]   BTN,
    output  reg [3:0]   LED
);

/* チャタリング除去回路を接続 */
wire UP, DOWN;

debounce d0 (.CLK(CLK), .RST(RST), .BTNIN(BTN[0]), .BTNOUT(UP));
debounce d1 (.CLK(CLK), .RST(RST), .BTNIN(BTN[1]), .BTNOUT(DOWN));

/* 速度設定用アップダウンカウンタ */
reg [1:0] speed;

always @( posedge CLK ) begin
    if ( RST )
        speed <= 2'h0;
    else if ( UP )
        speed <= speed + 2'h1;
    else if ( DOWN )
        speed <= speed - 2'h1;
end

/* システムクロックを分周 */
reg [24:0] cnt25;

always @( posedge CLK ) begin
    if ( RST )
        cnt25 <= 25'h0;
    else
        cnt25 <= cnt25 + 25'h1;
end

/* LED用カウンタのイネーブルを作成 */
reg ledcnten;

always @* begin
    case ( speed )
        2'h0:   ledcnten = (cnt25      ==25'h1ffffff);
        2'h1:   ledcnten = (cnt25[23:0]==24'hffffff);
        2'h2:   ledcnten = (cnt25[22:0]==23'h7fffff);
        2'h3:   ledcnten = (cnt25[21:0]==22'h3fffff);
        default ledcnten = 1'b0;
    endcase
end

/* LED用カウンタ */
reg [2:0] cnt3;

always @( posedge CLK ) begin
    if ( RST )
        cnt3 <= 3'h0;
    else if ( ledcnten )
        if ( cnt3==3'd5)
            cnt3 <=3'h0;
        else
            cnt3 <= cnt3 + 3'h1;
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
