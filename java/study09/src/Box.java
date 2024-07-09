public class Box {

// Object 클래스는 자바의 모든 클래스의 최상위 부모 클래스임

    private Object obj;

    public void set(Object obj) {
        this.obj = obj;
    }

    public Object get() {
        return this.obj;
    }
}
