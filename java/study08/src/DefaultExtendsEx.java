public class DefaultExtendsEx {
    public static void main(String[] args) {
        ChildInter1 ci1 = new ChildInter1() {

            @Override
            public void method1() {
                System.out.println("parent의 추상 메서드");
            }

            @Override
            public void method3() {
                System.out.println("child1의 추상 메서드");
            }

        };

        ci1.method1();
        ci1.method2();
        ci1.method3();

        System.out.println("\n --------------- \n");
        
        ChildInter2 ci2 = new ChildInter2() {
            @Override
            public void method1() {
                System.out.println("parent의 추상 메서드");
            }
            @Override
            public void method2() {
                System.out.println("parent의 디폴트를 추상으로 변경한 메서드");
            }

            @Override
            public void method3() {
                System.out.println("child2의 추상 메서드");
            }
        };

        ci2.method1();
        ci2.method2();
        ci2.method3();

        System.out.println("\n --------------- \n");

        ChildInter3 ci3 = new ChildInter3() {
            @Override
            public void method1() {
                System.out.println("parent의 추상 클래스");
            }

            @Override
            public void method3() {
                System.out.println("child3의 추상 메서드");
            }
        };

        ci3.method1();
        ci3.method2();
        ci3.method3();

    }
}
