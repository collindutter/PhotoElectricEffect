public class LightSource {
   private boolean lightOn;
   private int photonType;
   private int lastFire;
   private int fireSpacing;
   public static final int VISIBLE = 0,
                           IR = 1,
                           UV = 2;

   private int[][] lightVertices = {{0, 5}, {40, 17}, {40, -14}, {0, -5}, {0, 5}};
   private int[][] lightBeamVertices = {{0, 5}, {231, 70}, {329, -70}, {0, -5}, {0, 5}};

   public LightSource() {
      lightOn = true;
      photonType = 0;
      fireSpacing = 100;
      lastFire = millis();
   }

   public void render() {
      drawLight();

      if (lightOn && millis() - lastFire >= fireSpacing) {
         lastFire = millis();
         firePhoton();
      }
   }

   private void drawLight() {
      pushMatrix();

      translate(5, 5);
      translate(0, 5);
      scale(1.5);
      rotate(radians(55));
      translate(0, -5);

      if (lightOn) {
         fill(#ffff00, 50);
         stroke(#ffff00);
         beginShape();
         for (int ndx = 0; ndx < lightVertices.length; ndx++)
            vertex(lightBeamVertices[ndx][0], lightBeamVertices[ndx][1]);
         endShape();
      }

      fill(#cccccc);
      stroke(#cccccc);
      beginShape();
      for (int ndx = 0; ndx < lightVertices.length; ndx++)
         vertex(lightVertices[ndx][0], lightVertices[ndx][1]);
      endShape();

      popMatrix();
   }

   public void firePhoton() {
      addPhoton();
   }

   public void toggleLight() {
      lightOn = !lightOn;
   }

   public void nextPhotonType() {
      photonType = (photonType < 2 ? photonType + 1 : 0);
   }

   public int photonType() {
      return photonType;
   }

   public void increaseFireRate() {
      fireSpacing -= 5; 
   }

   public void decreaseFireRate() {
      fireSpacing += 5;
   }
}
