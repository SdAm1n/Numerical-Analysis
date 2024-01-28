npts=6

x = [1:npts]'/npts
y = x + 0.1 * sin(10. * x)

plot(x,y,'+', 'markersize', 20)
