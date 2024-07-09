public class Box2Ex {
    public static void main(String[] args) {

        Box2<String> box1 = new Box2<String>();
        box1.set("아이유");
        String name = box1.get();
        System.out.println("name: " + name);

        Box2<Integer> box2 = new Box2();
        box2.set(20000);
        int won = box2.get();
        System.out.println("won: " + won);
    }
}
