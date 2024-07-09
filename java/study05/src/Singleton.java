public class Singleton {
//    정적 멤버 -> 데이터 모두 공유 가능
    private static Singleton instance = new Singleton();

    private Singleton(){}

//    public으로 이것만 외부에서 사용 가능하도록 함
//    static 키워드를 사용하여 정적 멤버로 사용
    public static Singleton getInstance() {
        return instance;
    }
}
