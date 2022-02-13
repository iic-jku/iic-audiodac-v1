v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {We are using a constant-1 input for
the cascode (vdd_lo) to spare a 
connection to vdd_dig. One could also
connect the cascodes to in_p/in_n, 
but this increases the cap loading of 
the inputs.} 950 -310 0 0 0.4 0.4 {}
N 580 -820 580 -780 { lab=vdd_hi}
N 580 -820 780 -820 { lab=vdd_hi}
N 780 -820 780 -780 { lab=vdd_hi}
N 780 -750 840 -750 { lab=vdd_hi}
N 840 -820 840 -750 { lab=vdd_hi}
N 780 -820 840 -820 { lab=vdd_hi}
N 520 -750 580 -750 { lab=vdd_hi}
N 520 -820 520 -750 { lab=vdd_hi}
N 520 -820 580 -820 { lab=vdd_hi}
N 780 -640 780 -540 { lab=out_p}
N 580 -390 580 -150 { lab=VSS_LO}
N 780 -390 780 -150 { lab=VSS_LO}
N 580 -420 640 -420 { lab=VSS_LO}
N 640 -420 640 -150 { lab=VSS_LO}
N 720 -420 780 -420 { lab=VSS_LO}
N 720 -420 720 -150 { lab=VSS_LO}
N 400 -420 540 -420 { lab=in_p}
N 400 -310 860 -310 { lab=in_n}
N 860 -420 860 -310 { lab=in_n}
N 820 -420 860 -420 { lab=in_n}
N 620 -750 660 -750 { lab=out_p}
N 660 -750 700 -700 { lab=out_p}
N 700 -700 780 -700 { lab=out_p}
N 700 -750 740 -750 { lab=out_n}
N 660 -700 700 -750 { lab=out_n}
N 580 -700 660 -700 { lab=out_n}
N 780 -720 780 -700 { lab=out_p}
N 580 -720 580 -700 { lab=out_n}
N 580 -700 580 -620 { lab=out_n}
N 780 -700 780 -640 { lab=out_p}
N 400 -150 580 -150 { lab=VSS_LO}
N 390 -820 520 -820 { lab=vdd_hi}
N 580 -480 580 -450 { lab=casc1}
N 780 -480 780 -450 { lab=casc2}
N 580 -620 580 -540 { lab=out_n}
N 520 -580 840 -580 { lab=vdd_lo}
N 580 -510 640 -510 { lab=VSS_LO}
N 640 -510 640 -420 { lab=VSS_LO}
N 720 -510 790 -510 { lab=VSS_LO}
N 720 -510 720 -420 { lab=VSS_LO}
N 520 -510 540 -510 { lab=vdd_lo}
N 520 -580 520 -510 { lab=vdd_lo}
N 840 -580 840 -510 { lab=vdd_lo}
N 820 -510 840 -510 { lab=vdd_lo}
N 400 -580 520 -580 { lab=vdd_lo}
N 580 -150 640 -150 { lab=VSS_LO}
N 720 -150 780 -150 { lab=VSS_LO}
N 640 -150 720 -150 { lab=VSS_LO}
N 780 -640 950 -640 { lab=out_p}
N 580 -620 950 -620 { lab=out_n}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -750 0 0 {name=M6
L=0.5
W=10
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 600 -750 0 1 {name=M5
L=0.5
W=10
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 400 -420 0 0 {name=p1 lab=in_p}
C {devices/ipin.sym} 400 -310 0 0 {name=p2 lab=in_n}
C {devices/opin.sym} 940 -640 0 0 {name=p3 lab=out_p}
C {devices/opin.sym} 940 -620 0 0 {name=p4 lab=out_n}
C {devices/ipin.sym} 390 -820 0 0 {name=p5 lab=vdd_hi}
C {devices/ipin.sym} 400 -150 0 0 {name=p6 lab=vss_lo}
C {sky130_fd_pr/nfet_01v8.sym} 560 -420 0 0 {name=M1
L=0.15
W=20
nf=10 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 800 -420 0 1 {name=M2
L=0.15
W=20
nf=10 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 400 -580 0 0 {name=p7 lab=vdd_lo}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 560 -510 0 0 {name=M3
L=0.9
W=50
nf=5 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 800 -510 0 1 {name=M4
L=0.9
W=50
nf=5 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
C {devices/lab_wire.sym} 580 -460 0 0 {name=l9 lab=casc1}
C {devices/lab_wire.sym} 780 -460 0 0 {name=l10 lab=casc2}
C {devices/title.sym} 160 -40 0 0 {name=l2 author="(c) 2022 Harald Pretl, IIC, Johannes Kepler University"}
