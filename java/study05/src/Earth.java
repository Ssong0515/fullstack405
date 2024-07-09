public class Earth {

    static final double EARTH_RADIUS = 6400;
    public static final double EARTH_SURFACE_AREA;

//    정적 초기화 블록
//    정적 초기화 블록이 정적 멤버를 위한 일종의 생성자이기 때문에 static final로 지정한 상수를 초기화 할 수 있음
    static {
//        Math: 자바에서 제공하는 수학 관련 클래스
        EARTH_SURFACE_AREA = 4 * Math.PI * EARTH_RADIUS * EARTH_RADIUS;
    }
}
