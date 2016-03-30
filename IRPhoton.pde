public class IRPhoton extends Photon {
   public IRPhoton(PVector pos) {
      super(pos);
      energy = 11000;
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(#ff3300);
      stroke(#ff6600);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
