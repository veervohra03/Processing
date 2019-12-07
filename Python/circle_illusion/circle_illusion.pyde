# Veer Vohra
# Circle Illusion
# Python Ver 1.0

t = 0
r = TWO_PI/20
c = 0

def setup():
    size(1000, 800)
    
def draw():
    global t, r, c
    background(220)
    fill(51)
    translate(width/2, height/2)

    for i in range(10):
        rotate(r)
        stroke(255)
        strokeWeight(2)
        line(-200, 0, 200, 0)
        c += PI/10
        x = cos(t-c) * 200
        noStroke()
        fill(0)
        ellipse(x, 0, 20, 20)
        
    c = 0
    t += PI/100
