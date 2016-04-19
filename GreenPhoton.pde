public class GreenPhoton extends Photon {
   public GreenPhoton(PVector pos) {
      super(pos);
      energy = 101;
      fillColor = color(#66ff66);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(#33cc33);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
