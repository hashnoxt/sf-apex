public with sharing class ApexDataTypes {
    
    //Blob
    public Blob getBlob(){
        Blob exampleByte = Blob.valueOf('Example Blob');
        System.debug(exampleByte);

        return exampleByte;
    }

    //Boolean
    public Boolean getBoolean(){
        Boolean exampleBoolean = true;
        System.debug(exampleBoolean);

        return exampleBoolean;
    }

    //Date
    public Date getDate(){
        Date exampleDate = Date.newInstance(1960, 2, 17);
        System.debug(exampleDate);

        Date today = Date.today();
        System.debug(today);

        return exampleDate;
    }

    //Datetime
    public Datetime getDateTime(){
        Datetime exampleDateTime = Datetime.newInstance(1960,2,17, 8, 30, 5);
        System.debug(exampleDateTime.format('yyyy-MM-dd h:mm a'));

        return exampleDateTime;
    }

    //Decimal 
    /* If you don’t explicitly set the number of decimal places for a Decimal, 
    the item from which the Decimal is created determines the Decimal’s scale. 
    Scale is a count of decimal places. Use the setScale method to set a Decimal’s scale.
    */
    public Decimal getDecimal(){
        Decimal exampleDecimal = 3.1467;
        System.debug(exampleDecimal.setScale(2));

        return exampleDecimal;
    }

    //Double
    /* A 64-bit number that includes a decimal point. 
    Doubles have a minimum value of -263 and a maximum value of 263-1. For example:
    */
    public Double getDouble(){
        Double exampleDouble = 2.7182818284D;
        System.debug(exampleDouble);

        return exampleDouble;
    }

    //ID
    /* Any valid 18-character Lightning Platform record identifier. */
    public ID getId(){
        ID exampleId = '00300000003T2PG';
        System.debug(exampleId);

        return exampleId;
    }

    //Integer
    /* A 32-bit number that doesn’t include a decimal point. 
    Integers have a minimum value of -2,147,483,648 and a maximum value of 2,147,483,647. 
    */
    public Integer getInteger(){
        Integer exampleInteger = 3;
        System.debug(exampleInteger);

        return exampleInteger;
    }

    //Long
    /* A 64-bit number that doesn’t include a decimal point. 
    Longs have a minimum value of -2^63 and a maximum value of 2^63-1.
    Use this data type when you need a range of values wider than the range provided by Integer. 
    */
    public Long getLong(){
        Long exampleLong = 2147483648L;
        System.debug(exampleLong);

        return exampleLong;
    }

    //Object
    /* Any data type that is supported in Apex. Apex supports primitive data types (such as Integer), 
    user-defined custom classes, the sObject generic type, or an sObject specific type (such as Account). 
    All Apex data types inherit from Object.
    */
    public Object getObject(){
        Object obj = 10;
        // Cast the object to an integer.
        Integer i = (Integer)obj;
        System.debug(i);

        return obj;
    }

    //String
    /* Empty Strings and Trailing Whitespace: 
    sObject String field values follow the same rules as in SOAP API: they can never be empty (only null), 
    and they can never include leading and trailing whitespace. 
    These conventions are necessary for database storage.
    */
    public String getString(){
        String s = 'The quick brown fox jumped over the lazy dog.';
        System.debug(s);

        return s;
    }

}