# Veer Vohra
# Lightsabers
# Python Ver 1.0

t = 0

def setup():
    size(1000, 800)
    smooth()
    
def draw():
    global t
    background(220)
    strokeWeight(5)
    translate(width/2, height/2)
    for i in range(5):
        stroke(0, 100*(0.5*i+1))
        line(x((t+i)), y((t+i)), x2((t+i)), y2((t+i)))
    t += 0.5

def x(t):
    return sin(t/10)*100 + cos(t/5)*50 + sin(t)/10
def y(t):
    return cos(t/10)*100 + sin(t)/12
def x2(t):
    return sin(t/10)*100 + cos(t)*2
def y2(t):
    return cos(t/20)*100 + sin(t/12)*20
