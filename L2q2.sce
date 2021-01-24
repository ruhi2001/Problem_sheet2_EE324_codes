s = poly(0,"s")
G2 = 9/(s^2 + 2*s + 9)//underdamped system with damping ratio =1/3
sys2 = syslin("c",G2)
t=0:0.01:10
y = csim("step",t,sys2)
plot2d(t,y)

//second part where damping ratio d is varied
for d = 0:0.25:2
    G2 = 9/(s^2 + (2*3*d*s) + 9)
    sys2 = syslin("c",G2)
    t=0:0.01:10
    y = csim("step",t,sys2)
    plot2d(t,y)
end
 
