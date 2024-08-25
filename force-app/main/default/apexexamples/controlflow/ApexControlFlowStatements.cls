public with sharing class ApexControlFlowStatements {
    
    public Integer conditional(){
        Integer x = 5, sign;
        if (x <= 0) if (x == 0) sign = 0; else sign = -1; else sign = 5;
        System.debug(sign);
        return x;
    }

    public Integer switchStatements() {
        Integer x = 5;

        switch on x {
            when 5 {
                System.debug(x);
                return x;
            }
            when else {
                System.debug(x+1);
                return x + 1;
            }
        }
    }

    public void doWhile(){
        Integer x = 6;
        do {
            System.debug(x);
            x ++;
        } while (x < 10);
    }

    public void whileLoop(){
        Integer count = 1;

        while (count < 10) {
            System.debug(count);
            count += 1;
        }
    }

    public void traditionalForLoop(){
        Integer count = 10;

        for (Integer i = 0; i > count; i++ ){
            System.debug(i);
        }
    }

    public void listForLoop(){
        Integer[] myInts = new Integer[]{10, 2, 3, 4, 5, 6, 7, 8, 9, 10};

        for (Integer i : myInts) {
            System.debug(i);
        }
    }
}