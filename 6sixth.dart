///control flow
import 'dart:io';

//if statement
void main(){
  dynamic name = true;
  var age = 22;
  var marks = 60;
  var a = 2;
  

  if (name == true){
    name = "zerowasd";
    print("$name");
  }

  if (age >= 18){
    print("adult - if");
  }

  print(agecheck(age));
  marksobtained(marks, "if, else if, else <- ");
  ternaryopr(a);
}

//if else
String agecheck(age){
  if (age >= 18){
    return "adult - if and else";
  }
  else{
   return "not adult";
  }
}

//else if
void marksobtained(marks, [String? message
/** without the message variable this will be compiled but i want to 
show the strings of the argument */      
]){ 

/*void marksobtained([String? ], marks) <- this won't work = 
The compiler gets confused because marks is a required parameter, but it appears after an optional one. 
The compiler wouldn't know if a value passed to the function belongs to the name or the marks.*/

  if (message != null){
    stdout.write(message);
  }

  if(marks>= 80){
    print("Excellent");
  }else if(marks >= 60 && marks <= 79){
    print("Average");
  }else{
    print("Fail");
  }
}
///ternary operator
void ternaryopr(a){//condition ? value_if_true : value_if_false
  
  var result = a == 2 ? "yes - 2" : "no - 2";
  print(result);

}