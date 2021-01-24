s = poly(0,"s")
G1 = 1/(s+1)//first order equation
sys1 = syslin("c",G1)
t = [0:0.001:1]
y1 = csim("step",t,sys1)
sys2 = syslin("c",(1/((s^2)+(2*s)+1)))//second order equation
y2= csim("step",t,sys)

plot2d(t',[y1' y2'])
xlabel("t")
ylabel("y")
title("Step Response")
legend(["first order cont. time system"; "second order cont. time system"])
