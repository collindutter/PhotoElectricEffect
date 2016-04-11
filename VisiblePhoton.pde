public class VisiblePhoton extends Photon {
   public VisiblePhoton(PVector pos) {
      super(pos);
      energy = 5001;
      fillColor = color(#ff9900);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(#ffff00);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
