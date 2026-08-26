v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 330 -290 1130 110 {flags=graph
y1=1.9e-05
y2=4.1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ota5t_tran.raw
hilight_wave=1
color="1 12 6"
node="i(v.x1.vmeas1)
i(v.x1.vmeas2)
i(v.x1.vmeas)"}
B 2 330 -700 1130 -300 {flags=graph
y1=0.31
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
Vinp
Vinn"
color="4 15 17"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ota5t_tran.raw
hilight_wave=3
autoload=0}
B 2 1140 -700 1940 -300 {flags=graph
y1=0.3
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=7
node=out
rawfile=$netlist_dir/ota5t_ac.raw}
B 2 1140 -290 1940 110 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ph(out)
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
N -240 -10 -20 -10 {lab=Vinp}
N -180 30 -20 30 {lab=Vinn}
N 120 10 210 10 {lab=out}
C {sky130_fd_pr/corner.sym} 90 210 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -130 210 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 400n
write ota5t_tran.raw
op
print @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds] @m.x1.xm4.msky130_fd_pr__pfet_01v8[gds]
write ota5t_op.raw
ac dec 20 1k 100meg
write ota5t_ac.raw
.endc"}
C {vsource.sym} -240 20 0 0 {name=V1 value="dc 0.9 ac 1 sin(0.9 0.005 5meg 0 0)" savecurrent=false}
C {vsource.sym} -180 60 0 0 {name=V2 value="dc 0.9 sin(0.9 0.005 5meg 0 0 180)" savecurrent=false}
C {gnd.sym} -180 90 0 0 {name=l1 lab=0}
C {gnd.sym} -240 50 0 0 {name=l2 lab=0}
C {opin.sym} 210 10 0 0 {name=p1 lab=out}
C {gnd.sym} 50 60 0 0 {name=l4 lab=0}
C {vsource.sym} 50 -70 2 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} 50 -100 2 0 {name=l5 lab=0}
C {devices/launcher.sym} 375 165 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {lab_wire.sym} -190 -10 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} -140 30 0 0 {name=p3 sig_type=std_logic lab=Vinn}
C {ota_5t_sky130.sym} 40 10 0 0 {name=x1}
