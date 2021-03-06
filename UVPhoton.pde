public class UVPhoton extends Photon {
   public UVPhoton(PVector pos) {
      super(pos);
      energy = 301;
      fillColor = color(255);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(0);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
