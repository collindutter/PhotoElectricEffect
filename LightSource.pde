public class LightSource {
   private boolean lightOn;
   private int photonType;
   public static final int VISIBLE = 0,
                  IR = 1,
                  UV = 2;

   public LightSource() {
      lightOn = true;
      photonType = 0;
   }

   public void render() {
      drawLight();

      if (lightOn && frameCount % 60 == 0)
         firePhoton();
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
}
