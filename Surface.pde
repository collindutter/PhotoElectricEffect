public class Surface {
   private final int BRONZE = 0, 
                     IRON = 1,
                     MYTHRAL = 2;
   private int type;
   private final int[] ENERGY_THRESHOLDS = {1000, 5000, 10000};
   private final int HEIGHT = 50;
   private final int Y_COORD = height - HEIGHT;

   private Surface() {
      type = BRONZE;
   }

   public void render() {
      drawSurface();
   }

   private void drawSurface() {
      switch(type) {
      case BRONZE:
         fill(#996633);
         break;
      case IRON:
         fill(#cccccc);
         break;
      case MYTHRAL:
         fill(#6666ff);
         break;
      }
      noStroke();
      rect(0, Y_COORD, width, HEIGHT);
   }

   public int energyThreshold() {
      return ENERGY_THRESHOLDS[type];
   }

   public void nextSurfaceType() {
      type = (type < ENERGY_THRESHOLDS.length - 1 ? type + 1: 0);
   }

   public void setSurfaceType(int t) {
      type = t; 
   }
}
