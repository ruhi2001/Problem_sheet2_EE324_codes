s = poly(0,"s")
//parta
sys = syslin("c",(1/s))
t = 0:0.01:5
y1 = csim("step",t,sys)
plot2d(t,y1)

//partb
z = poly(0,"z");
G1 = 1/z;
sys1 = syslin("d",G1)
sl = tf2ss(sys1);
t=0:1:20;
u = ones(1,20);
y2 = dsimul(sl,u);
plot(t,y2);

xlabel("t");
ylabel("y2");

//q4 partc
s =poly(0,"s")
G = syslin("c",((s^3)/(s^2 + 1)))
t=0:0.01:5
y3 = csim("step",t,G)
plot2d(t,y3) 


