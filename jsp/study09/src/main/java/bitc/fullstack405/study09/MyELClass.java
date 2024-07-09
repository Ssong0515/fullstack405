package bitc.fullstack405.study09;

public class MyELClass {
    public String getGender(String jumin) {
        String returnStr = "";

        int beginIdx = jumin.indexOf("-") + 1;
        String genderStr = jumin.substring(beginIdx, beginIdx + 1);
        int genderInt = Integer.parseInt(genderStr);
        if (genderInt == 1 || genderInt == 3) {
            returnStr = "남자";
        } else if (genderInt == 2 || genderInt == 4) {
            returnStr = "여자";
        } else {
            returnStr = "주민번호 오류 입니다.";
        }
        return returnStr;
    }

    public static boolean isNumber(String value) {
        char[] chArr = value.toCharArray();
        for (int i = 0; i < chArr.length; i++) {
            if (!(chArr[i] >= '0' && chArr[i] <= '9')) {
                return false;
            }
        }
        return true;
    }

    public static String showGugudan(int limitDan) {
        
        // StringBuffer: 문자열을 생성하는 클래스
        // 일반적으로 사용하는 문자열 데이터 타입인 String은 문자열 연결 연산자인 + 로 문자열을 연결 했을 경우
        // 실제로 2개의 문자열이 하나의 문자열로 합해지는 것이 아니라 메모리 공간에서 기존의 문자열을 모두 삭제하고
        // 길다란 문자열로 생성하여 출력
        StringBuffer sb = new StringBuffer();
        try {
            sb.append("<table class='table table-striped table-hover'>");
            sb.append("<tbody>");
            for (int i = 2; i <= limitDan; i++) {
                sb.append("<tr>");
                for (int j = 1; j <= 9; j++) {
                    sb.append("<td class='border'>" + i + " * " + j + " = " + (i * j) + "</td>");
                }
                sb.append("</tr>");
            }
            sb.append("</table>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }
}
