public abstract class Photon extends Particle{
   Photon(PVector pos, PVector vel) {
      super(pos, vel);
   }

   public abstract void render();
}
