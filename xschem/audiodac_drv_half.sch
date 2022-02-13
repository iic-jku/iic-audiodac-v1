v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1070 -400 1070 -370 { lab=out}
N 1010 -460 1030 -460 { lab=drv4}
N 1010 -400 1010 -340 { lab=drv4}
N 1010 -340 1030 -340 { lab=drv4}
N 890 -400 890 -370 { lab=drv4}
N 830 -460 850 -460 { lab=crosscon}
N 830 -400 830 -340 { lab=crosscon}
N 830 -340 850 -340 { lab=crosscon}
N 710 -400 710 -370 { lab=crosscon}
N 650 -460 670 -460 { lab=drv2}
N 650 -400 650 -340 { lab=drv2}
N 650 -340 670 -340 { lab=drv2}
N 530 -400 530 -370 { lab=drv2}
N 470 -460 490 -460 { lab=drv1}
N 470 -400 470 -340 { lab=drv1}
N 470 -340 490 -340 { lab=drv1}
N 530 -310 530 -270 { lab=VSS}
N 1160 -340 1160 -270 { lab=VSS}
N 1070 -310 1070 -270 { lab=VSS}
N 890 -340 980 -340 { lab=VSS}
N 980 -340 980 -270 { lab=VSS}
N 890 -310 890 -270 { lab=VSS}
N 710 -310 710 -270 { lab=VSS}
N 710 -340 790 -340 { lab=VSS}
N 790 -340 790 -270 { lab=VSS}
N 1070 -340 1160 -340 { lab=VSS}
N 1070 -270 1160 -270 { lab=VSS}
N 530 -340 600 -340 { lab=VSS}
N 600 -340 600 -270 { lab=VSS}
N 530 -530 530 -490 { lab=vdd_hi}
N 1070 -530 1160 -530 { lab=vdd_hi}
N 1160 -530 1160 -460 { lab=vdd_hi}
N 1070 -460 1160 -460 { lab=vdd_hi}
N 1070 -530 1070 -490 { lab=vdd_hi}
N 890 -530 890 -490 { lab=vdd_hi}
N 710 -530 710 -490 { lab=vdd_hi}
N 710 -460 790 -460 { lab=vdd_hi}
N 790 -530 790 -460 { lab=vdd_hi}
N 890 -460 980 -460 { lab=vdd_hi}
N 980 -530 980 -460 { lab=vdd_hi}
N 530 -460 600 -460 { lab=vdd_hi}
N 600 -530 600 -460 { lab=vdd_hi}
N 530 -400 650 -400 { lab=drv2}
N 710 -400 830 -400 { lab=crosscon}
N 890 -400 1010 -400 { lab=drv4}
N 310 -310 310 -270 { lab=VSS}
N 380 -270 530 -270 { lab=VSS}
N 310 -530 310 -490 { lab=vdd_hi}
N 380 -530 530 -530 { lab=vdd_hi}
N 310 -460 380 -460 { lab=vdd_hi}
N 380 -530 380 -460 { lab=vdd_hi}
N 310 -340 380 -340 { lab=VSS}
N 380 -340 380 -270 { lab=VSS}
N 310 -400 310 -370 { lab=drv1}
N 250 -460 270 -460 { lab=in}
N 250 -400 250 -340 { lab=in}
N 250 -340 270 -340 { lab=in}
N 310 -400 470 -400 { lab=drv1}
N 1070 -400 1270 -400 { lab=out}
N 980 -270 1070 -270 { lab=VSS}
N 890 -270 980 -270 { lab=VSS}
N 790 -270 890 -270 { lab=VSS}
N 600 -270 710 -270 { lab=VSS}
N 710 -270 790 -270 { lab=VSS}
N 530 -270 600 -270 { lab=VSS}
N 980 -530 1070 -530 { lab=vdd_hi}
N 790 -530 890 -530 { lab=vdd_hi}
N 600 -530 710 -530 { lab=vdd_hi}
N 710 -530 790 -530 { lab=vdd_hi}
N 890 -530 980 -530 { lab=vdd_hi}
N 530 -530 600 -530 { lab=vdd_hi}
N 530 -430 530 -400 { lab=drv2}
N 650 -460 650 -400 { lab=drv2}
N 710 -430 710 -400 { lab=crosscon}
N 830 -460 830 -400 { lab=crosscon}
N 890 -430 890 -400 { lab=drv4}
N 1010 -460 1010 -400 { lab=drv4}
N 310 -530 380 -530 { lab=vdd_hi}
N 310 -270 380 -270 { lab=VSS}
N 250 -460 250 -400 { lab=in}
N 310 -430 310 -400 { lab=drv1}
N 470 -460 470 -400 { lab=drv1}
N 1070 -430 1070 -400 { lab=out}
N 170 -270 310 -270 { lab=VSS}
N 170 -530 310 -530 { lab=vdd_hi}
N 170 -400 250 -400 { lab=in}
N 830 -340 830 -190 { lab=crosscon}
N 830 -190 870 -190 { lab=crosscon}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1050 -460 0 0 {name=M10
L=0.5
W=100
nf=10 mult=20
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1050 -340 0 0 {name=M9
L=0.5
W=100
nf=10 mult=10
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 870 -460 0 0 {name=M8
L=0.5
W=100
nf=10 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 870 -340 0 0 {name=M7
L=0.5
W=100
nf=10 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 690 -460 0 0 {name=M6
L=0.5
W=40
nf=4 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 690 -340 0 0 {name=M5
L=0.5
W=20
nf=4 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 510 -460 0 0 {name=M4
L=0.5
W=8
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 510 -340 0 0 {name=M3
L=0.5
W=4
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 290 -460 0 0 {name=M2
L=0.5
W=2
nf=2 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 290 -340 0 0 {name=M1
L=0.5
W=1
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 170 -400 0 0 {name=p1 lab=in}
C {devices/opin.sym} 1270 -400 0 0 {name=p3 lab=out}
C {devices/ipin.sym} 170 -530 0 0 {name=p4 lab=vdd_hi}
C {devices/ipin.sym} 170 -270 0 0 {name=p5 lab=vss}
C {devices/lab_wire.sym} 430 -400 0 0 {name=l11 lab=drv1}
C {devices/lab_wire.sym} 610 -400 0 0 {name=l12 lab=drv2
}
C {devices/lab_wire.sym} 970 -400 0 0 {name=l14 lab=drv4


}
C {devices/iopin.sym} 870 -190 0 0 {name=p2 lab=crosscon}
C {devices/title.sym} 160 -40 0 0 {name=l2 author="(c) 2022 Harald Pretl, IIC, Johannes Kepler University"}
