public abstract class Photon extends Particle {
   protected int energy;

   public Photon(PVector pos) {
      super(pos);
      vel = new PVector(random(2, 3), random(3, 5));
   }

   public boolean render() {
      super.render();
      drawPhoton();

      if (pos.y + RADIUS >= surface.Y_COORD) {
         if (energy > surface.energyThreshold())
            addElectron(pos.copy());
         return false;
      }
      return !offScreen();
   }

   public void drawPhoton() {
      /*filter(blur);*/
   }
}
