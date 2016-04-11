/** The light source */
public LightSource light;
/** The surface which to fire photons at */
public Surface surface;
/** A list of all the active particles */
public ArrayList<Particle> particles;
/** A blur shader used for fancy GL effects */
public PShader blur;

public void setup() {
  size(600, 400, P2D);
  blur = loadShader("blur.glsl");
  init();
}

/**
 * Initiate items in sketch.
 */
public void init() {
  light = new LightSource();
  surface = new Surface();
  particles = new ArrayList<Particle>();
}

/**
 * Draw all particles, the light source, the surface, and handle
 * user inputs.
 */
public void draw() {
  background(0);

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP)
        light.increaseFireRate();
      else if (keyCode == DOWN)
        light.decreaseFireRate();
    }
  }

  for (int ndx = 0; ndx < particles.size(); ndx++)
    if (!particles.get(ndx).render())
      particles.remove(ndx);
  light.render();
  surface.render();
} 

/**
 * Add new photon to the list of photons depending
 * on what mode the light is currently in.
 *
 * @return photon which was added
 */
public void addPhoton() {
  PVector pos = new PVector(20 + random(-5, 5), 20 + random(-5, 5));
  Photon ph;

  switch (light.photonType()) {
    case LightSource.VISIBLE:
      ph = new VisiblePhoton(pos);
      particles.add(ph);
      light.setFilterColor(ph.fillColor);
      break;
    case LightSource.UV:
      ph = new UVPhoton(pos);
      particles.add(ph);
      light.setFilterColor(ph.fillColor);
      break;
  }
}

/**
 * Add new electron to the list of electrons.
 *
 * @param pos position at which to add electron
 */
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
