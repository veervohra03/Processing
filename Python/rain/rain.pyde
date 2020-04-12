# Veer Vohra
# Rain
# Python Ver 1.0

numDrops = 1
drops = []

def setup():
    size(1000,800)
    noStroke()
    for i in range(numDrops):
        drops.append([random(width), 0, random(0,5)])

def draw():
    background(250)
    fill(51)
    for i in range(len(drops)):
        if drops[i][2] <= height:
            ellipse(drops[i][0], drops[i][1], drops[i][2], drops[i][2])
            drops[i][1] += drops[i][2]
        else:
            drops.remove(i)
    drops.append([random(width), 0, random(20)])
