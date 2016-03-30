public class UVPhoton extends Photon {
   public UVPhoton(PVector pos) {
      super(pos);
      energy = 1001;
   }

   public void drawPhoton() {
      super.drawPhoton();
      fill(#cc66ff);
      stroke(#ff66ff);
      ellipse(pos.x, pos.y, RADIUS * 2, RADIUS * 2);
   }
}
