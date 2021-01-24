s = poly(0,"s")
G1 = (s+5)/((s+4)*(s+2))
sys1 = syslin("c",G1)
G2 = ((s+5)/(s+4))
sys2 = syslin("c",G2)
G3 = (1/(s+2))
sys3 = syslin("c",G3)
t=[0:2:10]
y = csim("step",t,sys1)
//series connection
y1 = csim("step",t,sys2)
y2 = csim(y1,t,sys3)
//series but first step input is passed through G3
y3 = csim("step",t,sys3)
y4 = csim(y3,t,sys2)
plot(t',[y' y2' y4'])



