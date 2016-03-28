public class Particle {
   protected PVector pos, vel;
   protected final int RADIUS = 7;

   public Particle(PVector pos) {
      this.pos = pos;
      vel = null;
   }

   public boolean render() {
      pos.add(vel);

      return !offScreen();
   }

   public boolean offScreen() {
      return pos.x < -RADIUS || pos.x > width + RADIUS
       || pos.y < -RADIUS || pos.y > height + RADIUS;
   }
   
}
