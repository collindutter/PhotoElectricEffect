public class Electron extends Particle {
  public Electron(PVector pos) {
    super(pos);
    vel = new PVector(random(3, 5), -random(3, 5));
  }

  public boolean render() {
    super.render();
    drawElectron();
    return !offScreen();
  }

  private void drawElectron() {
    pushMatrix();
    translate(pos.x, pos.y);

    fill(#0099ff);
    stroke(#00ccff);
    for(int i = 0; i < 12; i++) {
      rotate(TWO_PI / 12);
      ellipse(RADIUS, 0, 2, 2);
    }
    popMatrix();
    //ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
  }
}
