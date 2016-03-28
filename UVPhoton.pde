public class UVPhoton extends Photon {
   public UVPhoton(PVector pos) {
      super(pos);
      energy = 1000;
   }

   public void drawPhoton() {
      fill(255);
      stroke(0);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
