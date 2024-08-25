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

}