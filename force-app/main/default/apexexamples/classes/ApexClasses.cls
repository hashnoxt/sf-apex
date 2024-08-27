public with sharing class ApexClasses {

    public static void processString(){
        String msg = 'Original value';
        changeString(msg);

        System.debug(msg);
    }

    public static void changeString(String s){
        s = 'Modified value';
    }

}