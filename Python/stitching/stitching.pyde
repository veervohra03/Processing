# Veer Vohra
# Stitching
# Python Ver 1.0

t = 0
x = []
objs = 1000
beg = 0

def setup():
    global beg
    size(1000, 500)
    smooth()
    inter = 1
    temp = inter
    for i in range(objs):
        x.append(temp)
        temp += inter
    
def draw():
    global t, x, beg
    background(0)
    stroke(220)
    translate(0, height/2)
    
    for i in range(objs):
        y = (sin(t+(i*100))*200)
        line(x[i], 0, x[i], y)
    for i in range(objs):
        y = -(sin(t+(i*100))*200)
        line(x[i], 0, x[i], y)
        
    t += 0.05
