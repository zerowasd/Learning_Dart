///functions - types of parameters
///I am trying to avoid syntax complexity as much as i can

void main(){
  int a = 1;
  int b = 3;
  String name = "neeraj";
  int age = 22;
 
  
  greet();//function call
  print(add(a, b));//return type example
  show(name , age);//parameters
  print(iseven(3));//arrow with dynamic parameter
  
  optionalshow(name);
  namedshow(age: 22,name: "neeraj"); //order does not matter

  requiredshow(age: name,name: age);
  greet2(name);
  greet2(name,city: "Pune");//default parameters


  String? name2  = getName(true);
  print(name2);
  

}
///function
greet(){
  print("greetings");
}

///function with parameter and return type
add(int a , int b){
  return a + b; //return - must be stores or printed
}

///arrow function
bool iseven(n) => n % 2 == 0; //dart dynamically assigns n so no need to say int n as parameter

///parameters
show(name, age){
  print("$name $age");
}

///optional positional parameters
optionalshow(name, [age] ){///positional - using []  Optional parameters are nullable by default.
  print("optional $name $age");
}

///named function parameters -> {}
namedshow({name, age}){//order does not matter
  print("$name $age");
}

///named function required parameters -> required keyword
requiredshow({required name , required age}){
  print("$name $age");
}

///default parameter
void greet2(name, {String? city}){
  print("$name from $city");
}

///function with nullable return type
String? getName(bool isloggedin){
  if (isloggedin){
    return "neeraj";

  }
  return null;
}