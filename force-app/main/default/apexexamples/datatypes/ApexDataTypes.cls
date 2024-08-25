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
}