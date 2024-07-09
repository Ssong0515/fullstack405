public class CatEx {
    public static void main(String[] args) {
        Animal animal;
        Cat cat = new Cat();

        animal = cat;
        
        if (cat == animal) {
            System.out.println("cat 과 animal은 같다");
        } else {
            System.out.println("cat 과 animal은 다르다");
        }

    }

}
