public class BluePhoton extends Photon {
   public BluePhoton(PVector pos) {
      super(pos);
      energy = 101;
      fillColor = color(#33ccff);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(#3399ff);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
