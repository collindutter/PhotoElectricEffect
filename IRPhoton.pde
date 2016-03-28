public class IRPhoton extends Photon {
   public IRPhoton(PVector pos) {
      super(pos);
      energy = 11000;
   }

   public void drawPhoton() {
      fill(255);
      stroke(0);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
