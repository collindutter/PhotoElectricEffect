public class LightSource {
   private boolean lightOn;
   private int photonType;
   private int lastFire;
   private int fireSpacing;
   public static final int VISIBLE = 0,
                           IR = 1,
                           UV = 2;

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
