public with sharing class ApexClasses {
    /* In APEX you can only have classes one level deep */
    // private | public | global 
    //[virtual | abstract | with sharing | without sharing] 

    /*
    The private access modifier declares that this class is only known locally, that is, only by this section of code. 
    This is the default access for inner classes—that is, if you don't specify an access modifier for an inner class, it’s considered private. 
    This keyword can only be used with inner classes (or with top-level test classes marked with the @IsTest annotation).
    
    The public access modifier declares that this class is visible in your application or namespace.

    The global access modifier declares that this class is known by all Apex code everywhere. 
    All classes containing methods defined with the webservice keyword must be declared as global. 
    If a method or inner class is declared as global, the outer, top-level class must also be defined as global.

    The with sharing and without sharing keywords specify the sharing mode for this class. 
    For more information, see Using the with sharing, without sharing, and inherited sharing Keywords.

    The virtual definition modifier declares that this class allows extension and overrides. 
    You can’t override a method with the override keyword unless the class has been defined as virtual.

    The abstract definition modifier declares that this class contains abstract methods, 
    that is, methods that only have their signature declared and no body defined.
    */

    

}