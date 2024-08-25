public with sharing class ApexConstants {
    static final Integer PRIVATE_INT_CONST = 200;
    static final Integer PRIVATE_INT_CONST2;

    public static Integer calculate() {
        System.debug(PRIVATE_INT_CONST2);
        return 5 + PRIVATE_INT_CONST;
    }

    static {
        PRIVATE_INT_CONST2 = calculate();
    }
}