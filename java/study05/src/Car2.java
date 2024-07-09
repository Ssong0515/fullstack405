public class Car2 {

    private int speed;
    private boolean stop;


    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        if (speed < 0 ) {
            this.speed = 0;
            this.stop = true;
        } else {
            this.speed = speed;
            this.stop = false;
        }
    }

    public boolean isStop() {
        return stop;
    }

    public void setStop(boolean stop) {
        this.stop = stop;
        this.speed = 0;
    }
}
