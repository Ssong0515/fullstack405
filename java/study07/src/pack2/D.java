package pack2;

import pack1.A;

public class D extends A {
    public D() {
        super();
        this.field = "상속 관계에서 field에서 접근";
        this.method();
    }

}
