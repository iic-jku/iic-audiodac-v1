v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
B 2 370 -910 1170 -510 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.07891e-06
x2=1.10789e-05
divx=5
subdivx=1
node=""
color=""
dataset=0
unitx=u
}
N 240 -100 240 -40 { lab=0}
N 240 -40 360 -40 { lab=0}
N 360 -100 360 -40 { lab=0}
N 660 -100 660 -40 { lab=0}
N 240 -380 700 -380 { lab=vdd_hi}
N 660 -340 660 -300 { lab=vdd_lo}
N 660 -180 660 -160 { lab=in_n}
N 360 -200 360 -160 { lab=in}
N 660 -270 760 -270 { lab=vdd_lo}
N 760 -340 760 -270 { lab=vdd_lo}
N 660 -130 760 -130 { lab=0}
N 760 -130 760 -40 { lab=0}
N 660 -40 760 -40 { lab=0}
N 840 -240 880 -240 { lab=vdd_hi}
N 760 -40 840 -40 { lab=0}
N 840 -160 840 -40 { lab=0}
N 840 -160 880 -160 { lab=0}
N 120 -100 120 -40 { lab=0}
N 120 -40 240 -40 { lab=0}
N 840 -380 840 -240 { lab=vdd_hi}
N 120 -340 120 -160 { lab=vdd_lo}
N 660 -180 880 -180 { lab=in_n}
N 1180 -240 1220 -240 { lab=outp}
N 1220 -290 1220 -240 { lab=outp}
N 1220 -290 1300 -290 { lab=outp}
N 1300 -290 1300 -250 { lab=outp}
N 1180 -220 1220 -220 { lab=outn}
N 1220 -220 1220 -170 { lab=outn}
N 1220 -170 1300 -170 { lab=outn}
N 1300 -190 1300 -170 { lab=outn}
N 660 -240 660 -180 { lab=in_n}
N 660 -340 760 -340 { lab=vdd_lo}
N 240 -380 240 -160 { lab=vdd_hi}
N 560 -340 590 -340 { lab=vdd_lo}
N 760 -340 820 -340 { lab=vdd_lo}
N 820 -340 820 -220 { lab=vdd_lo}
N 820 -220 880 -220 { lab=vdd_lo}
N 490 -100 490 -40 { lab=0}
N 490 -340 490 -300 { lab=vdd_lo}
N 410 -270 450 -270 { lab=in}
N 410 -200 410 -130 { lab=in}
N 410 -130 450 -130 { lab=in}
N 560 -340 560 -270 { lab=vdd_lo}
N 560 -130 560 -40 { lab=0}
N 410 -270 410 -200 { lab=in}
N 490 -200 490 -160 { lab=in_p}
N 360 -40 490 -40 { lab=0}
N 120 -340 490 -340 { lab=vdd_lo}
N 360 -200 410 -200 { lab=in}
N 490 -340 560 -340 { lab=vdd_lo}
N 490 -270 560 -270 { lab=vdd_lo}
N 490 -130 560 -130 { lab=0}
N 490 -40 560 -40 { lab=0}
N 490 -240 490 -200 { lab=in_p}
N 590 -340 660 -340 { lab=vdd_lo}
N 560 -40 660 -40 { lab=0}
N 600 -270 620 -270 { lab=in_p}
N 600 -270 600 -130 { lab=in_p}
N 600 -130 620 -130 { lab=in_p}
N 600 -200 880 -200 { lab=in_p}
N 490 -200 600 -200 { lab=in_p}
N 700 -380 840 -380 { lab=vdd_hi}
N 840 -140 880 -140 {
lab=0}
C {devices/code.sym} -230 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice.tt.red tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"
spice_ignore=false}
C {devices/launcher.sym} -150 -30 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/vsource.sym} 240 -130 0 0 {name=V2 value=5
}
C {devices/lab_wire.sym} 310 -40 0 0 {name=l1 lab=0}
C {devices/lab_wire.sym} 310 -380 0 0 {name=l2 lab=vdd_hi}
C {devices/code_shown.sym} -250 -470 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
set noaskquit
set filetype=ascii
save all

op
tran 0.1n 5u

write tb_audiodac_drv.raw
exit

.endc
"}
C {devices/lab_wire.sym} 400 -200 0 0 {name=l3 lab=in}
C {devices/vsource.sym} 360 -130 0 0 {name=V5
value1="dc 5 "
value="dc 1.2 pulse 1.2 0 0 1n 1n 0.05u 0.1u"}
C {audiodac_drv.sym} 1030 -190 0 0 {name=xdrv}
C {devices/vsource.sym} 120 -130 0 0 {name=V1 value=1.8
}
C {sky130_fd_pr/pfet_01v8.sym} 640 -270 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 640 -130 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/res.sym} 1300 -220 0 0 {name=R1
value=16
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1270 -290 0 0 {name=l4 lab=outp}
C {devices/lab_wire.sym} 1270 -170 0 0 {name=l5 lab=outn}
C {devices/lab_wire.sym} 780 -180 0 0 {name=l7 lab=in_n}
C {devices/lab_wire.sym} 360 -340 0 0 {name=l6 lab=vdd_lo}
C {sky130_fd_pr/pfet_01v8.sym} 470 -270 0 0 {name=M2
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 470 -130 0 0 {name=M3
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 780 -200 0 0 {name=l8 lab=in_p
}
