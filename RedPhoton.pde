
public class RedPhoton extends Photon {
   public RedPhoton(PVector pos) {
      super(pos);
      energy = 0;
      fillColor = color(#ff3300);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(#cc0000);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
