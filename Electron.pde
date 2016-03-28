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
      fill(#0099ff);
      stroke(#00ccff);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
