public with sharing class ApexTypeController {
    public ApexTypeController() {
        Integer x = 5;
        System.debug('Integer is '+ x);
    }

    public Integer ItsMeFunction(){
        Integer x = 7;
        Decimal y = 5.6;
        System.debug('Decimal is '+ y);

        //List
        List<String> stringList = new List<String>{'STR1', 'STR2', 'STR3'};
        System.debug('List str '+ stringList);

        //Set
        Set<Integer> integerSet = new Set<Integer>{1, 2, 3, 4, 1, 2, 3};
        System.debug('Set str '+ integerSet);

        //Map
        Map<String, Integer> stringMap = new Map<String, Integer>{'a' => 1, 'b' => 2, 'c' => 3};
        System.debug('Map str '+ stringMap);

        //If else
        if (x == 5){
            System.debug('X is 5');
        }else{
            System.debug('X is not 5');
        }

        return 0;
    }
}