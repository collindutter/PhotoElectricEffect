public abstract class Photon extends Particle {
   protected int energy;

   public Photon(PVector pos) {
      super(pos);
      vel = new PVector(2, 5);
   }

   public boolean render() {
      super.render();
      drawPhoton();

      if (pos.y > surface.Y_COORD) {
         if (energy > surface.energyThreshold())
            addElectron(pos.copy());
         return false;
      }
      return !offScreen();
   }

   public abstract void drawPhoton();
}
