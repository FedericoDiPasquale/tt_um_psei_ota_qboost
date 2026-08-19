v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -460 700 -460 {lab=VDD}
N 200 100 700 100 {lab=GND}
N 280 -460 280 -360 {lab=VDD}
N 320 -460 320 -320 {lab=VDD}
N 560 -460 560 -320 {lab=VDD}
N 520 -460 520 -360 {lab=VDD}
N 240 -320 240 -280 {lab=#net1}
N 240 -280 280 -280 {lab=#net1}
N 280 -280 480 -280 {lab=#net1}
N 480 -320 480 -280 {lab=#net1}
N 280 -280 280 -200 {lab=#net1}
N 520 -280 520 -200 {lab=VOUT}
N 520 -240 660 -240 {lab=VOUT}
N 100 -160 240 -160 {lab=VINP}
N 560 -160 660 -160 {lab=VINN}
N 320 -160 320 100 {lab=GND}
N 480 -160 480 100 {lab=GND}
N 280 -120 280 -80 {lab=V5}
N 520 -120 520 -80 {lab=V5}
N 200 0 360 0 {lab=VDD}
N 440 0 440 100 {lab=GND}
N 400 -80 400 -30 {lab=V5}
N 400 0 440 0 {lab=GND}
N 280 -160 320 -160 {lab=GND}
N 280 -130 280 -120 {lab=V5}
N 280 -200 280 -190 {lab=#net1}
N 520 -200 520 -190 {lab=VOUT}
N 520 -130 520 -120 {lab=V5}
N 480 -160 520 -160 {lab=GND}
N 280 -290 280 -280 {lab=#net1}
N 280 -360 280 -350 {lab=VDD}
N 280 -320 320 -320 {lab=VDD}
N 520 -360 520 -350 {lab=VDD}
N 520 -290 520 -280 {lab=VOUT}
N 520 -320 560 -320 {lab=VDD}
N 160 30 160 80 {lab=GND}
N 160 80 230 80 {lab=GND}
N 230 80 230 100 {lab=GND}
N 120 0 160 0 {lab=GND}
N 120 0 120 80 {lab=GND}
N 120 80 160 80 {lab=GND}
N 160 -70 160 -30 {lab=VDD}
N 160 -50 230 -50 {lab=VDD}
N 230 -50 230 0 {lab=VDD}
N 220 -460 220 -390 {lab=VDD}
N 160 -390 220 -390 {lab=VDD}
N 160 -390 160 -130 {lab=VDD}
N 400 30 400 40 {lab=GND}
N 280 -80 330 -80 {lab=V5}
N 390 -80 410 -80 {lab=V5}
N 470 -80 520 -80 {lab=V5}
N 160 -130 160 -70 {lab=VDD}
N 330 -80 390 -80 {lab=V5}
N 410 -80 470 -80 {lab=V5}
N 400 40 400 100 {lab=GND}
C {devices/ipin.sym} 100 -160 0 0 {name=p1 lab=VINP}
C {devices/ipin.sym} 660 -160 2 0 {name=p2 lab=VINN}
C {devices/opin.sym} 660 -240 0 0 {name=p4 lab=VOUT}
C {sky130_fd_pr/nfet_01v8.sym} 380 0 0 0 {name=M5
W=4
L=1.475
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 260 -160 0 0 {name=M1
W=2
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -160 0 1 {name=M2
W=2
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 260 -320 0 0 {name=M3
W=5
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 500 -320 0 0 {name=M4
W=5
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 200 -460 0 0 {name=p5 lab=VDD}
C {ipin.sym} 200 100 0 0 {name=p6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 180 0 0 1 {name=M6
W=4
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 400 -50 0 0 {name=p7 sig_type=std_logic lab=V5}
