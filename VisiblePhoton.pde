public class VisiblePhoton extends Photon {
   public VisiblePhoton(PVector pos) {
      super(pos);
      energy = 5001;
   }

   public void drawPhoton() {
      fill(#ff9900);
      stroke(#ffff00);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
