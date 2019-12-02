# Veer Vohra
# Supernova
# Python Ver 1.0

t = 0
inPs = []
outPs = []
numPs = 100
cs = 10
outColours = [[136, 101, 245], [174, 111, 255], [109, 37, 179], [128, 128, 128]]
inColours = [[240, 57, 36], [242, 79, 60], [138, 46, 34], [89, 33, 31], [14, 10, 14]]

def setup():
    size(1000, 800)
    noStroke()
    for i in range(numPs):
        inPs.append(inParticle())
        outPs.append(outParticle())
    
def draw():
    global t, cs, outColours, inColours
    background(0)
    translate(width/2, height/2)
    if cs <= 125:
        cs += 0.75
        for i in range(numPs):
            inPs[i].move()
            inPs[i].display()
            ellipse(0, 0, cs, cs)
    else:
        for i in range(numPs):
            outPs[i].move()
            outPs[i].display()
    
    
# ---------------------------------------- #

class inParticle:
    
    def __init__(self): 
        r = random(100, 500)
        theta = random(0, TWO_PI)
        x = r * cos(theta)
        y = r * sin(theta)
        self.pos = PVector(x, y)
        self.vel = PVector(0, 0)
        self.diam = 20
        
    def move(self):
        self.diam -= 0.3
        accel = PVector(0, 0)
        force = PVector.sub(PVector(0, 0), self.pos)
        d = force.mag()
        d = map(d, 0, 500, 1, 20)
        strength = 50 / (d**2)
        force.setMag(strength)
        self.vel.add(force)
        self.vel.x = constrain(self.vel.x, -10, 10)
        self.vel.y = constrain(self.vel.y, -10, 10)
        self.pos.add(self.vel)
    
    def display(self):
        c = int(random(0,4))
        fill(inColours[c][0], inColours[c][1], inColours[c][2])
        ellipse(self.pos.x, self.pos.y, self.diam, self.diam)

# ---------------------------------------- #

class outParticle:
    
    def __init__(self):
        self.pos = PVector(0, 0)
        self.vel = PVector(random(-1,1), random(-1,1))
        self.diam = 0
        
    def move(self):
        self.pos.x += self.vel.x
        self.pos.y += self.vel.y
        self.vel.mult(1.1)
        self.diam += 0.5
    
    def display(self):
        c = int(random(0,3))
        fill(outColours[c][0], outColours[c][1], outColours[c][2])
        ellipse(self.pos.x, self.pos.y, self.diam, self.diam)
        
# ---------------------------------------- #
