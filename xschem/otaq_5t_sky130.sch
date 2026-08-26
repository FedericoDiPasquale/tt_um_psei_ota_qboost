v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -300 300 -300 {lab=VDD}
N -200 260 300 260 {lab=GND}
N -120 -300 -120 -200 {lab=VDD}
N -80 -300 -80 -160 {lab=VDD}
N 160 -300 160 -160 {lab=VDD}
N 120 -300 120 -200 {lab=VDD}
N -160 -160 -160 -120 {lab=#net1}
N -160 -120 -120 -120 {lab=#net1}
N -120 -120 80 -120 {lab=#net1}
N 80 -160 80 -120 {lab=#net1}
N -120 -120 -120 -40 {lab=#net1}
N 120 -120 120 -40 {lab=VOUT}
N 120 -80 260 -80 {lab=VOUT}
N -300 0 -160 0 {lab=VINP}
N 160 0 260 0 {lab=VINN}
N -80 0 -80 260 {lab=GND}
N 80 0 80 260 {lab=GND}
N -120 40 -120 80 {lab=#net2}
N 120 40 120 80 {lab=#net2}
N 40 160 40 260 {lab=GND}
N 0 80 0 130 {lab=#net2}
N 0 160 40 160 {lab=GND}
N -120 0 -80 0 {lab=GND}
N -120 30 -120 40 {lab=#net2}
N -120 -40 -120 -30 {lab=#net1}
N 120 -40 120 -30 {lab=VOUT}
N 120 30 120 40 {lab=#net2}
N 80 0 120 0 {lab=GND}
N -120 -130 -120 -120 {lab=#net1}
N -120 -200 -120 -190 {lab=VDD}
N -120 -160 -80 -160 {lab=VDD}
N 120 -200 120 -190 {lab=VDD}
N 120 -130 120 -120 {lab=VOUT}
N 120 -160 160 -160 {lab=VDD}
N -170 -300 -170 -220 {lab=VDD}
N -220 -220 -170 -220 {lab=VDD}
N 0 190 0 200 {lab=GND}
N -120 80 -70 80 {lab=#net2}
N -10 80 10 80 {lab=#net2}
N 70 80 120 80 {lab=#net2}
N -220 -220 -220 40 {lab=VDD}
N -220 100 -220 130 {lab=VDD}
N -180 160 -40 160 {lab=VDD}
N -220 120 -170 120 {lab=VDD}
N -170 120 -170 160 {lab=VDD}
N -220 190 -220 230 {lab=GND}
N -220 230 -180 230 {lab=GND}
N -180 230 -180 260 {lab=GND}
N -260 160 -220 160 {lab=GND}
N -260 160 -260 230 {lab=GND}
N -260 230 -220 230 {lab=GND}
N -220 40 -220 100 {lab=VDD}
N -70 80 -10 80 {lab=#net2}
N 10 80 70 80 {lab=#net2}
N 0 200 0 260 {lab=GND}
C {devices/ipin.sym} -300 0 0 0 {name=p1 lab=VINP}
C {devices/ipin.sym} 260 0 2 0 {name=p2 lab=VINN}
C {devices/opin.sym} 260 -80 0 0 {name=p4 lab=VOUT}
C {sky130_fd_pr/nfet_01v8.sym} -20 160 0 0 {name=M5
W=0.5
L=20
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
C {sky130_fd_pr/nfet_01v8.sym} -140 0 0 0 {name=M1
W=0.5
L=7
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
C {sky130_fd_pr/nfet_01v8.sym} 140 0 0 1 {name=M2
W=0.5
L=7
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
C {sky130_fd_pr/pfet_01v8.sym} -140 -160 0 0 {name=M3
W=1
L=7
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -160 0 0 {name=M4
W=1
L=7
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
C {ipin.sym} -200 -300 0 0 {name=p5 lab=VDD}
C {ipin.sym} -200 260 0 0 {name=p6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -200 160 0 1 {name=M6
W=1
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
