package com.example.EL;

public class MYElClass {

    //주민번호를 입력받아 성별 반환 메소드
    public String getGender(String jumin){
        String returnStr="";
        //123456-1234567

        int beginIndex=jumin.indexOf("-") +1;
        String genderStr= jumin.substring(beginIndex,beginIndex+1);

        int gender = Integer.parseInt(genderStr);

        if(gender==1 || gender==3){
            returnStr="남자";
        }else if(gender==2 || gender==4){
            returnStr="여자";
        }else{
            returnStr="주민번호 오류";
        }
        return  returnStr;
    }

    //입력받은 문자열이 순자인지 판별
    //['입','력','받',....]

    public static boolean isNumber(String val) {
        char[] chArr = val.toCharArray();

//        for (int i = 0; i < chArr.length; i++) {
//            if (!(chArr[i] >= '0' && chArr[i] <= '9')) {
//                return false;
//            }
//        }
        //위아래 동일
        for (char ch : chArr) {
            if (!Character.isDigit(ch)) {
                return false;
            }
        }
            return true;
        }

        //입력받은 정수까지 구구단은 HTML테이블로 출력하는 테스트
    public static String showGugudan(int limitDan){
        StringBuffer sb= new StringBuffer();

        try{
            sb.append("<table border='1'>");
            for(int i=2;i<limitDan;i++){
                sb.append("<tr>");
                for(int j=1;j<=9;j++){
                    sb.append("<td>"+ i +"X "+ j + "="+ i*j +"</td>");
                }
                sb.append("</tr>");
            }
            sb.append("</table>");
        }catch (Exception e){
            e.printStackTrace();
        }
        return sb.toString();
    }
}
