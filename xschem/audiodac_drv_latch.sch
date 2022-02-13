v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 760 -540 760 -520 { lab=in_n}
N 700 -610 720 -610 { lab=in_p}
N 700 -560 700 -490 { lab=in_p}
N 700 -490 720 -490 { lab=in_p}
N 760 -460 760 -420 { lab=VSS}
N 760 -490 830 -490 { lab=VSS}
N 830 -490 830 -420 { lab=VSS}
N 760 -680 760 -640 { lab=vdd_hi}
N 760 -610 830 -610 { lab=vdd_hi}
N 830 -680 830 -610 { lab=vdd_hi}
N 530 -680 530 -640 { lab=vdd_hi}
N 460 -610 540 -610 { lab=vdd_hi}
N 460 -680 460 -610 { lab=vdd_hi}
N 460 -680 530 -680 { lab=vdd_hi}
N 530 -460 530 -420 { lab=VSS}
N 460 -490 530 -490 { lab=VSS}
N 460 -490 460 -420 { lab=VSS}
N 460 -420 530 -420 { lab=VSS}
N 530 -560 530 -520 { lab=in_p}
N 570 -610 590 -610 { lab=in_n}
N 590 -540 590 -490 { lab=in_n}
N 570 -490 590 -490 { lab=in_n}
N 530 -560 650 -560 { lab=in_p}
N 650 -560 700 -560 { lab=in_p}
N 590 -540 650 -540 { lab=in_n}
N 650 -540 760 -540 { lab=in_n}
N 760 -680 830 -680 { lab=vdd_hi}
N 760 -420 830 -420 { lab=VSS}
N 530 -420 760 -420 { lab=VSS}
N 530 -680 760 -680 { lab=vdd_hi}
N 530 -580 530 -560 { lab=in_p}
N 700 -610 700 -560 { lab=in_p}
N 590 -610 590 -540 { lab=in_n}
N 760 -580 760 -540 { lab=in_n}
N 300 -420 340 -420 { lab=VSS}
N 300 -680 460 -680 { lab=vdd_hi}
N 340 -420 460 -420 { lab=VSS}
N 300 -560 530 -560 { lab=in_p}
N 300 -540 590 -540 { lab=in_n}
C {devices/ipin.sym} 300 -560 0 0 {name=p1 lab=in_p}
C {devices/ipin.sym} 300 -540 0 0 {name=p2 lab=in_n}
C {devices/ipin.sym} 300 -680 0 0 {name=p3 lab=vdd_hi}
C {devices/ipin.sym} 300 -420 0 0 {name=p4 lab=vss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 740 -610 0 0 {name=M19


L=0.5
W=20
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 740 -490 0 0 {name=M18


L=0.5
W=10
nf=2 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 550 -610 0 1 {name=M20


L=0.5
W=20
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 550 -490 0 1 {name=M17


L=0.5
W=10
nf=2 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/title.sym} 160 -50 0 0 {name=l2 author="(c) 2022 Harald Pretl, IIC, Johannes Kepler University"}
