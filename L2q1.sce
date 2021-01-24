s=poly(0,"s")
//roll no. = 18d070046, esha 
G1 = 46/(s+5)
sys1 = syslin("c",G1)
disp(G1)
//q1b
t = 0:0.01:5
y = csim("step",t,sys1)
z = 9.016
plot2d(t,y)
xlabel("t")
ylabel("y")
title("Step Response")
xpts = [0 5];
ypts = [9.016 9.016];
plot(xpts, ypts);

xpts = [0.2 0.2];
ypts = [0 10];
plot(xpts, ypts);
//q1c
s=poly(0,"s")
for a=46:46:4600
     G1 = a/(s+5)
     sys1 = syslin("c",G1);
     t=0:0.01:5;
     y = csim('step',t,sys1);
     plot2d(t,y) 
        
end    
xlabel("t")
ylabel("y")
title("Step Responses")

//q1d
s=poly(0,"s")
for b=5:5:500
     G1 = 46/(s+b)
     sys1 = syslin("c",G1);
     t=0:0.01:5;
     y = csim('step',t,sys1);
     plot2d(t,y) 
        
end    
xlabel("t")
ylabel("y")
title("Step Responses")


