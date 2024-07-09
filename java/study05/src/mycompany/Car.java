package mycompany;

// 다른 패키지에 있는 클래스를 가져와서 적용 시킴
import hankook.SnowTire;
import hyundai.Engine;
import kumho.BigWidthTire;
import kumho.Tire;

//동일한 이름의 클래스를 import로 가져오면 클래스명이 겹치기 때문에 동일한 이름의 클래스를 동시에 여러개 가져올 수 없음
//import hankook.Tire;

public class Car {

//  다른 패키지에 있는 클래스를 가져와서 객체로 생성
    Engine engine = new Engine();
    SnowTire snowTire = new SnowTire();
    BigWidthTire bigWidthTire = new BigWidthTire();
    Tire tire1 = new Tire();

//    다른 패키지에 있는 클래스를 가져와서 객체 생성
//    기존에 import를 통해서 가져온 클래스와 동일한 이름의 다른 패키지의 클래스를 가져와야 할 경우 해당 클래스의 전체 경ㄹ명을 다 입력해야 함
//    자주 사용하는 클래스는 import로 가져오고, 사용 빈도가 낮은 같은 이름의 클래스는 패키지 명까지 다 사용하는 방식을 사용
//    hankook.Tire tire2 = new hankook.Tire();
}
