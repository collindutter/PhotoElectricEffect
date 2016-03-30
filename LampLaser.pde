public LightSource light;
public Surface surface;
public ArrayList<Particle> particles;
public PShader blur;

public void setup() {
   size(600, 400, P2D);
   blur = loadShader("blur.glsl");
   init();
}

public void init() {
   light = new LightSource();
   surface = new Surface();
   particles = new ArrayList<Particle>();
}

public void draw() {
   background(0);

   for (int ndx = 0; ndx < particles.size(); ndx++)
      if (!particles.get(ndx).render())
         particles.remove(ndx);
   light.render();
   surface.render();
} 

public void addPhoton() {
   PVector pos = new PVector(20 + random(-5, 5), 20 + random(-5, 5));

   switch (light.photonType()) {
   case LightSource.VISIBLE:
      particles.add(new VisiblePhoton(pos));
      break;
   case LightSource.IR:
      particles.add(new IRPhoton(pos));
      break;
   case LightSource.UV:
      particles.add(new UVPhoton(pos));
      break;
   }
}

public void addElectron(PVector pos) {
   particles.add(new Electron(pos));
}

public void mousePressed() {
   int mx = mouseX;
   int my = mouseY;

   if (my > surface.Y_COORD)
      surface.nextSurfaceType();
   else if (mx < 75 && my < 75)
      light.nextPhotonType();
   else
      light.toggleLight();
}

public void keyPressed() {
   if (key == CODED) {
      if (keyCode == UP)
         light.increaseFireRate();
      else if (keyCode == DOWN)
         light.decreaseFireRate();
   }
}
