public LightSource light;
public Surface surface;
public ArrayList<Particle> particles; // all particles currently on screen

public void setup() {
   size(600, 400);
   init();
}

public  void init() {
   light = new LightSource();
   surface = new Surface();
   particles = new ArrayList<Particle>();
}

public void draw() {
   light.render(); // render the light source
   surface.render(); // render the surface

   // render all particles
   for (int ndx = 0; ndx < particles.size(); ndx++) {
      if (!particles.get(ndx).render())
         particles.remove(ndx);
   }
} 
