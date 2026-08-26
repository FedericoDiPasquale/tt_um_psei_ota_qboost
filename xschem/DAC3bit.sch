v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -210 -90 -210 {lab=#net1}
N -150 -70 -90 -70 {lab=#net1}
N -90 -210 -90 -70 {lab=#net1}
N -90 -70 -90 -30 {lab=#net1}
N -150 70 -90 70 {lab=#net2}
N -90 30 -90 70 {lab=#net2}
N -90 70 -90 110 {lab=#net2}
N -150 210 -90 210 {lab=vx}
N -90 170 -90 210 {lab=vx}
N -90 210 -90 250 {lab=vx}
N 40 220 40 250 {lab=out}
N 40 250 40 280 {lab=out}
N 170 250 250 250 {lab=out}
N -90 250 -50 250 {lab=vx}
N 10 250 170 250 {lab=out}
C {sky130_fd_pr/res_generic_po.sym} -240 -210 1 0 {name=R1
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -180 -210 1 0 {name=R2
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -240 -70 1 0 {name=R3
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -180 -70 1 0 {name=R4
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -240 70 1 0 {name=R5
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -180 70 1 0 {name=R6
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -240 210 1 0 {name=R7
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -180 210 1 0 {name=R8
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -90 0 2 0 {name=R9
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} -90 140 2 0 {name=R10
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {opin.sym} 250 250 0 0 {name=p1 lab=out}
C {ipin.sym} -270 -70 0 0 {name=p2 lab=b0}
C {ipin.sym} -270 70 0 0 {name=p3 lab=b1}
C {ipin.sym} -270 210 0 0 {name=p4 lab=b2}
C {sky130_fd_pr/res_generic_po.sym} 40 190 2 0 {name=R12
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 40 310 2 1 {name=R13
W=1
L=21
model=res_generic_po
spiceprefix=X
mult=1}
C {ipin.sym} 40 340 3 0 {name=p5 lab=GND}
C {ipin.sym} 40 160 1 0 {name=p6 lab=VDD}
C {lab_wire.sym} -270 -210 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_wire.sym} -90 250 0 0 {name=p8 sig_type=std_logic lab=vx}
C {sky130_fd_pr/res_generic_po.sym} -20 250 3 1 {name=R11
W=1
L=63
model=res_generic_po
spiceprefix=X
mult=1}
