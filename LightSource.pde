public class LightSource {
    private boolean lightOn;
    private int photonType;
    private int lastFire;
    private int fireSpacing;
    public static final int RED = 0,
                            GREEN = 1,
                            BLUE = 2,
                            VIOLET = 3,
                            UV = 4;

    private color filterColor;
    private int[][] lightVertices = {{0, 5}, {40, 17}, {40, -14}, {0, -5}, {0, 5}};
    private int[][] lightBeamVertices = {{0, 5}, {231, 70}, {329, -70}, {0, -5}, {0, 5}};
    private color[] photonColors = {#ff3300, #66ff66, #33ccff, #cc66ff, 255};

    /**
     * Create a turned on LightSource firing visible light firing at
     * regular speed.
     */
    public LightSource() {
        lightOn = true;
        photonType = RED;
        filterColor = color(#ff3300);
        fireSpacing = 1500;
        lastFire = millis();
    }

    /**
     * Render the light source, and handle photon firing.
     */
    public void render() {
        drawLight();

        if (lightOn && millis() - lastFire >= fireSpacing) {
            lastFire = millis();
            firePhoton();
        }
    }

    /**
     * Render the light source model.
     */
    private void drawLight() {
        pushMatrix();

        translate(5, 5);
        translate(0, 5);
        scale(1.5);
        rotate(radians(55));
        translate(0, -5);

        if (lightOn) {
            // the light beam
            fill(#ffff00, 50);
            stroke(#ffff00);
            beginShape();
            for (int ndx = 0; ndx < lightVertices.length; ndx++)
                vertex(lightBeamVertices[ndx][0], lightBeamVertices[ndx][1]);
            endShape();

            // filter
            fill(filterColor);
            stroke(filterColor);
            strokeWeight(3);
            line(lightVertices[1][0] + 2, lightVertices[1][1] + 15, lightVertices[1][0] + 2, lightVertices[2][1] - 15);
            strokeWeight(1);
        }

        // light object
        fill(#cccccc);
        stroke(#cccccc);
        beginShape();
        for (int ndx = 0; ndx < lightVertices.length; ndx++)
            vertex(lightVertices[ndx][0], lightVertices[ndx][1]);
        endShape();

        popMatrix();
    }

    /**
     * Fire a single photon from the light source.
     *
     * @return photon that was fired
     */
    public void firePhoton() {
        addPhoton();
    }

    /**
     * Toggle the light's state between on and off.
     */
    public void toggleLight() {
        lightOn = !lightOn;
    }

    /**
     * Iterate the light's photon type to the 'next' type.
     */
    public void nextPhotonType() {
        photonType = (photonType < 4 ? photonType + 1 : 0);
        filterColor = photonColors[photonType];
    }

    /**
     * Return the current photon type.
     */
    public int photonType() {
        return photonType;
    }

    /**
     * Increase the fire rate at which photons fire from light.
     */
    public void increaseFireRate() {
        fireSpacing -= 5; 
    }

    /**
     * Decrease the fire rate at which photons fire from light.
     */
    public void decreaseFireRate() {
        fireSpacing += 5;
    }

    /**
     * Set the filter color
     */
    public void setFilterColor(color c) {
        filterColor = c;
    }
}
