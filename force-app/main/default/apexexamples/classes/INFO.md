APEX Classes

In APEX you can only have classes one level deep

// private | public | global 
//[virtual | abstract | with sharing | without sharing] 

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

Apex doesn’t support multiple inheritance

Note

- You can’t add an abstract method to a global class after the class has been uploaded in a Managed - Released package version.
- If the class in the Managed - Released package is virtual, the method that you can add to it must also be virtual and must have an implementation.
- You can’t override a public or protected virtual method of a global class of an installed managed package.

Class variables

To declare a variable, specify the following:
- Optional: Modifiers, such as public or final, as well as static.
- Required: The data type of the variable, such as String or Boolean.
- Required: The name of the variable.
- Optional: The value of the variable.

```
[public | private | protected | global] [final] [static] data_type variable_name 
[= value]
```

Class Methods

To define a method, specify the following:

- Optional: Modifiers, such as public or protected.
- Required: The data type of the value returned by the method, such as String or Integer. Use void if the method doesn’t return a value.
- Required: A list of input parameters for the method, separated by commas, each preceded by its data type, and enclosed in parentheses (). If there are no parameters, use a set of empty parentheses. A method can only have 32 input parameters.
- Required: The body of the method, enclosed in braces {}. All the code for the method, including any local variable declarations, is contained here.

```
[public | private | protected | global] [override] [static] data_type method_name 
(input parameters) 
{
// The body of the method
}
```

In Apex, all primitive data type arguments, such as Integer or String, are passed into methods by value. This fact means that any changes to the arguments exist only within the scope of the method. When the method returns, the changes to the arguments are lost.

Non-primitive data type arguments, such as sObjects, are passed into methods by reference. Therefore, when the method returns, the passed-in argument still references the same object as before the method call. Within the method, the reference can't be changed to point to another object but the values of the object's fields can be changed.

A constructor is code that is invoked when an object is created from the class blueprint. You do not need to write a constructor for every class. If a class does not have a user-defined constructor, a default, no-argument, public constructor is used.

If you create a constructor that takes arguments, and you still want to use a no-argument constructor, you must create your own no-argument constructor in your code. Once you create a constructor for a class, you no longer have access to the default, no-argument public constructor.

 In Apex, a constructor can be overloaded, that is, there can be more than one constructor for a class, each having different parameters. The following example illustrates a class with two constructors: one with no arguments and one that takes a simple Integer argument. It also illustrates how one constructor calls another constructor using the this(...) syntax, also know as constructor chaining.

```
public class TestObject2 {

private static final Integer DEFAULT_SIZE = 10;

Integer size;

   //Constructor with no arguments
   public TestObject2() {
       this(DEFAULT_SIZE); // Using this(...) calls the one argument constructor    
   }

   // Constructor with one argument 
   public TestObject2(Integer ObjectSize) {
     size = ObjectSize;  
   }
}
```

```private```

This access modifier is the default, and means that the method or variable is accessible only within the Apex class in which it’s defined. If you don’t specify an access modifier, the method or variable is private.

```protected```

This means that the method or variable is visible to any inner classes in the defining Apex class, and to the classes that extend the defining Apex class. You can only use this access modifier for instance methods and member variables. This setting is strictly more permissive than the default (private) setting, just like Java.

```public```

This means that the method or variable is accessible by all Apex within a specific package. For accessibility by all second-generation (2GP) managed packages that share a namespace, use public with the @NamespaceAccessible annotation. Using the public access modifier in no-namespace packages implicitly renders the Apex code as @NamespaceAccessible.

```global```

This means the method or variable can be used by any Apex code that has access to the class, not just the Apex code in the same application. This access modifier must be used for any method that must be referenced outside of the application, either in SOAP API or by other Apex code. If you declare a method or variable as global, you must also declare the class that contains it as global.


# Static and Instance Methods, Variables, and Initialization Code

Static methods, variables, and initialization code have these characteristics.

- They’re associated with a class.
- They’re allowed only in outer classes.
- They’re initialized only when a class is loaded.
- They aren’t transmitted as part of the view state for a Visualforce page.

Instance methods, member variables, and initialization code have these characteristics.

- They’re associated with a particular object.
- They have no definition modifier.
- They’re created with every object instantiated from the class in which they’re declared.

Local variables have these characteristics.

- They’re associated with the block of code in which they’re declared.
- They must be initialized before they’re used.
