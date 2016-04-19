public class VioletPhoton extends Photon {
   public VioletPhoton(PVector pos) {
      super(pos);
      energy = 201;
      fillColor = color(#cc66ff);
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(fillColor);
      stroke(#9933ff);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
