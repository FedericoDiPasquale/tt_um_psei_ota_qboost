v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -240 -30 -190 {lab=VDD}
N -240 -210 -30 -210 {lab=VDD}
N -240 -210 -240 30 {lab=VDD}
N -30 -210 310 -210 {lab=VDD}
N 310 -210 310 -40 {lab=VDD}
N 60 -210 60 50 {lab=VDD}
N -170 80 -10 80 {lab=#net1}
N 180 100 180 230 {lab=out}
N 130 100 180 100 {lab=out}
N 180 -10 240 -10 {lab=out}
N 180 -10 180 100 {lab=out}
N -120 -140 -100 -140 {lab=#net1}
N -120 -140 -120 80 {lab=#net1}
N 210 -90 210 -10 {lab=out}
N 380 -90 380 10 {lab=out}
N 210 -90 380 -90 {lab=out}
N 180 -120 180 -10 {lab=out}
N -310 180 -10 180 {lab=#net2}
N -10 120 -10 180 {lab=#net2}
N -10 180 160 180 {lab=#net2}
N 160 180 240 180 {lab=#net2}
N 240 30 240 180 {lab=#net2}
N 150 40 150 180 {lab=#net2}
N 40 -120 180 -120 {lab=out}
N 40 -160 140 -160 {lab=#net2}
N 140 -160 150 -160 {lab=#net2}
N 150 -160 150 40 {lab=#net2}
N 150 -240 150 -160 {lab=#net2}
N -440 100 -310 100 {lab=in}
N -340 60 -310 60 {lab=#net2}
N -340 60 -340 180 {lab=#net2}
N -340 180 -310 180 {lab=#net2}
N -120 80 -120 170 {lab=#net1}
N -120 170 -120 210 {lab=#net1}
N -120 210 -120 220 {lab=#net1}
N -120 280 -120 290 {lab=GND}
N -120 290 180 290 {lab=GND}
N 30 290 30 320 {lab=GND}
N -30 -410 -30 -240 {lab=VDD}
N -30 -330 20 -330 {lab=VDD}
N 80 -330 150 -330 {lab=#net2}
N 150 -330 150 -240 {lab=#net2}
N 150 -330 190 -330 {lab=#net2}
C {ota_5t_sky130.sym} -250 80 0 0 {name=x1}
C {ota_5t_sky130.sym} 50 100 0 0 {name=x2}
C {ota_5t_sky130.sym} -20 -140 0 1 {name=x3}
C {otaq_5t_sky130.sym} 300 10 0 0 {name=x4}
C {sky130_fd_pr/cap_mim_m3_1.sym} -120 250 0 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 260 0 0 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=4 spiceprefix=X}
C {opin.sym} 180 210 0 0 {name=p1 lab=out}
C {ipin.sym} -440 100 0 0 {name=p3 lab=in}
C {ipin.sym} 30 320 3 0 {name=p4 lab=GND}
C {ipin.sym} -30 -410 1 0 {name=p5 lab=VDD}
C {lab_wire.sym} 250 -330 0 1 {name=p6 sig_type=std_logic lab=GND}
C {lab_wire.sym} 50 -350 0 1 {name=p2 sig_type=std_logic lab=GND}
C {lab_wire.sym} 220 -350 0 1 {name=p7 sig_type=std_logic lab=GND}
C {lab_wire.sym} -240 130 0 1 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} -30 -90 0 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_wire.sym} 310 60 0 1 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} 60 150 0 1 {name=p11 sig_type=std_logic lab=GND}
C {sky130_fd_pr/res_high_po_1p41.sym} 50 -330 1 0 {name=R1
L=88.83
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 220 -330 1 0 {name=R2
L=88.83
model=res_high_po_1p41
spiceprefix=X
mult=1}
