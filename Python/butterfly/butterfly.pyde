# Veer Vohra
# Butterfly
# Python Ver 1.0

t = 0

def setup():
    size(1000, 800)
    
def draw():
    global t
    stroke(0)
    strokeWeight(2)
    translate(width/2, height/2)
    x = 100*(sin(t)*(exp(cos(t))-2*cos(4*t)-sin(t/12)**5))
    y = 100*(cos(t)*(exp(cos(t))-2*cos(4*t)-sin(t/12)**5))
    point(x, y)
    t += 0.5
    
