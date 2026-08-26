v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 310 -280 1110 120 {flags=graph
y1=5.6e-07
y2=1.2e-06
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
rawfile=$netlist_dir/otaq5t_tran.raw
color="1 6 12"
node="i(v.x1.vmeas)
i(v.x1.vmeas1)
i(v.x1.vmeas2)"}
B 2 310 -690 1110 -290 {flags=graph
y1=0.31
y2=1.4
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
vinp
vinn"
color="4 15 17"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/otaq5t_tran.raw
hilight_wave=1}
B 2 1120 -690 1920 -290 {flags=graph
y1=0.32
y2=1.2
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
node=out}
B 2 1120 -280 1920 120 {flags=graph
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
N -260 0 -40 0 {lab=Vinp}
N -200 40 -40 40 {lab=Vinn}
N 100 20 190 20 {lab=out}
C {sky130_fd_pr/corner.sym} 70 220 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -110 220 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 400n
write otaq5t_tran.raw
op
print @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds] @m.x1.xm4.msky130_fd_pr__pfet_01v8[gds] 
print @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
write otaq5t_op.raw
ac dec 20 1k 100meg
write otaq5t_ac.raw
.endc"}
C {vsource.sym} -260 30 0 0 {name=V1 value="dc 0.9 ac 1 sin(0.9 0.005 5meg 0 0)" savecurrent=false}
C {vsource.sym} -200 70 0 0 {name=V2 value="dc 0.9 sin(0.9 0.005 5meg 0 0 180)" savecurrent=false}
C {gnd.sym} -200 100 0 0 {name=l1 lab=0}
C {gnd.sym} -260 60 0 0 {name=l2 lab=0}
C {opin.sym} 190 20 0 0 {name=p1 lab=out}
C {gnd.sym} 30 70 0 0 {name=l4 lab=0}
C {vsource.sym} 30 -60 2 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} 30 -90 2 0 {name=l5 lab=0}
C {devices/launcher.sym} 355 175 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {lab_wire.sym} -210 0 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} -160 40 0 0 {name=p3 sig_type=std_logic lab=Vinn}
C {otaq_5t_sky130.sym} 20 20 0 0 {name=x1}
