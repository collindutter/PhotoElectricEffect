public abstract class Particle {
   protected PVector pos, vel;

   public Particle(PVector pos, PVector vel) {
      this.pos = pos;
      this.vel = vel;
   }

   public abstract boolean render();

   public boolean offScreen() {
      return pos.x < 0 || pos.x > width || pos.y < 0 || pos.y > height;
   }
   
}
