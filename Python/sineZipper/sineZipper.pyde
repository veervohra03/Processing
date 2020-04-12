# Veer Vohra
# Sine Zipper
# Python Ver 1.0

t = 0
x = []
objs = 30
beg = 0

def setup():
    global beg
    size(1000, 800)
    smooth()
    inter = 20
    beg = (width-(inter*objs))/2 - 5
    temp = 20
    for i in range(objs):
        x.append(temp)
        temp += inter
    
def draw():
    global t, x, beg
    background(0)
    stroke(220)
    strokeWeight(5)
    translate(beg, height/2)
    op1()
    #op2()
    #op3()
    t += 0.05
    
    
def op1():
    for i in range(objs):
        y = (sin(t+(i*100))*100) - 50
        line(x[i], -50, x[i], y)
    for i in range(objs):
        y = -(sin(t+(i*100))*100) + 50
        line(x[i], 50, x[i], y)
    
def op2():
    for i in range(objs):
        y = (sin(t+(i*100))*200) - 50
        line(x[i], -50, x[i], y)
    for i in range(objs):
        y = -(sin(t+(i*100))*200) + 50
        line(x[i], 50, x[i], y)
    
def op3():
    for i in range(objs):
        y = (sin((t+(i*100))/2)*100) - 60
        line(x[i], -60, x[i], y)
    for i in range(objs):
        y = -(sin((t+(i*100))/2)*100) + 60
        line(x[i], 60, x[i], y)
