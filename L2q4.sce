s = poly(0,"s")
//parta
sys = syslin("c",(1/s))
t = 0:0.01:5
y1 = csim("step",t,sys)
plot2d(t,y1)

//partb
z=poly(0,'z')
h=syslin("d",(1/z))
sl=tf2ss(h)
u=ones(1,20)
x2=dsimul(sl,u)  //Step response
disp(x2)

//q4 partc
s =poly(0,"s")
G = syslin("c",((s^3)/(s^2 + 1)))
t=0:0.01:5
y3 = csim("step",t,G)
plot2d(t,y3) 


