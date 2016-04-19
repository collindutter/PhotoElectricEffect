public class Surface {
    private final int SODIUM = 0, 
            CALCIUM = 1,
            ZINC = 2;
    private int type;
    private final int[] ENERGY_THRESHOLDS = {100, 200, 300};
    private final String[] names = {"Sodium", "Calcium", "Zinc"};
    private final int HEIGHT = 50;
    private final int Y_COORD = height - HEIGHT;

    private Surface() {
        type = SODIUM;
    }

    public void render() {
        drawSurface();
    }

    private void drawSurface() {
        switch(type) {
            case SODIUM:
                fill(#996633);
                break;
            case CALCIUM:
                fill(#b3b3b3);
                break;
            case ZINC:
                fill(#6b6b47);
                break;
        }
        noStroke();
        rect(0, Y_COORD, width, HEIGHT);

        fill(0);
        text(names[type], 2, Y_COORD + HEIGHT - 2);

        fill(#0099ff);
        for (int i = 0; i < width / 10; i++) {
            textSize(15);
            textAlign(LEFT);

            text("e-", i * 30 + 6, Y_COORD + 9);
        }
    }

    public int energyThreshold() {
        return ENERGY_THRESHOLDS[type];
    }

    public void nextSurfaceType() {
        type = (type < ENERGY_THRESHOLDS.length - 1 ? type + 1 : 0);
    }

    public void setSurfaceType(int t) {
        type = t; 
    }
}
