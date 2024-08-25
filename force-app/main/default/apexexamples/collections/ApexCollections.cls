public with sharing class ApexCollections {

    //Apex Sets
    public Set<String> getSet(){
        //New set without elements
        Set<String> stringSet1 = new Set<String>();

        //New set with elements
        Set<String> stringSet2 = new Set<String>{'New York', 'Parris'};
        stringSet2.add('Tokyo');

        System.debug(stringSet2);

        return stringSet2;
    }

    //Apex Maps
    public Map<String, Boolean> getMap(){
        Map<String, Boolean> exampleMap = new Map<String, Boolean>();
        exampleMap.put('isProductConfig', true);
        exampleMap.putAll(new Map<String, Boolean>{'isExpandable' => false});

        System.debug(exampleMap);
        return exampleMap;
    }

    //Apex Lists
    public List<String> getList(){

        List<String> exampleList = new List<String>();
        exampleList.add('Apple');
        exampleList.addAll(new List<String>{'Grapes', 'Cherry'});
        System.debug(exampleList);

        /* W
        hen using one-dimensional lists of primitives or objects, 
        you can also use more traditional array notation to declare and reference list elements. 
        For example, you can declare a one-dimensional list of primitives or objects by following 
        the data type name with the [] characters:
        */
        // String[] colors = new List<String>();
        List<String> colors = new String[2];
        // String[] colors = new String[1];
        colors[0] = 'Green';
        colors[1] = 'Red';
        System.debug(colors);

        return exampleList;
    }
}