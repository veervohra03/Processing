# Veer Vohra
# Roses
# Python Ver 1.0

def setup():
    size(1000, 800)

def draw():
    background(250)
    translate(width/2, height/2)
    noStroke()
    fill(51, 100)
    rose(0.01, 681, 350) # rose(increments from 0 to 2PI, number of petals, height of petals)
    
def rose(inc, k, amp):
    theta = 0
    while theta <= 2*PI:
        x = amp*cos(k*theta)*(cos(theta))
        y = amp*cos(k*theta)*(sin(theta))
        theta += inc
        ellipse(x, y, 5, 5)
