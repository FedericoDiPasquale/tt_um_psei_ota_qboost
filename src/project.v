/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_psei_ota_qboost (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
//    input  wire       VAPWR,    // 3.3v power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire b0, b1, b2 ,out;

    // --- Istanza blocco analogico ---
    main u_analog (
        .VDD   (1'b1),          // VPWR: connesso a VDPWR nel layout
        .GND   (1'b0),          // VGND: connesso a VGND nel layout
        .B0    (b0),
        .B1    (b1),
        .B2    (b2),
        .OUT   (out),
        // ... altre porte
    );

    // --- Istanza blocco digitale (se presente) ---
    // tt_um_psei_NOME_ctrl u_ctrl (
    //     .clk   (clk),
    //     .rst_n (rst_n),
    //     ...
    // );

    // --- Mappatura pin TinyTapeout ---
    // Uscite digitali non usate: tie basso
    assign uo_out  = 8'b0;
    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;
    assign b0 = ui_in[0];
    assign b1 = ui_in[1];
    assign b2 = ui_in[2];

    // Pin analogici
    assign ua[5] = out;
    // ua[2..7] non connessi — lasciare floating per progetti analog-only
    
endmodule
