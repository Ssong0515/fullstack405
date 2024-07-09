public class Computer {
    int sum1(int[] values) {
        int sum = 0;

        for (int i = 0; i < values.length; i++) {
            sum += values[i];
        }

        return sum;
    }

//    ... : 매개변수에 사용 시, 매개변수의 수를 따로 지정하지 않고 가변적으로 사용 할 수 있음
//    해당 형식으로 매개변수 받으면, 매개변수는 배열 형식임.
    int sum2 (int ... values) {
        int sum = 0;

        for(int i = 0; i < values.length; i++) {
            sum += values[i];
        }

        return sum;
    }
}
