public class ColorPoint extends Point {
    private String color;

    public ColorPoint(int x, int y, String color) {
        super(x, y);
        this.color = color;
    }

    public void setPoint(int x, int y) {
        this.move(x, y);
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void show() {
        System.out.println(this.color + "색으로 {" + this.getX() + ", " + this.getY() + "}");
    }


    public static void main(String[] args) {
        ColorPoint cp = new ColorPoint(5, 5, "YELLOW");
        cp.setPoint(10, 20);
        cp.setColor("GREEN");
        cp.show();
    }
}
