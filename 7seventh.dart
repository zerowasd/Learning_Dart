///control flow - loops | warning are intentional

void main(){
  var whiley = 1;
  var dwhiley = 1;

  for (int iteration = 1; iteration <= 5; iteration++){//unlike python 
    print("for iteration $iteration");
  }
  
  //for in
  List<String> names = ["zerowasd","amit", "ravi"];
  for(String name in names){
    print(name);
  }

  //while
  while(whiley <= 5){
    print("While iteration $whiley");
    whiley++;
  }

  //do-while
  do{
    print("do-while $dwhiley");
    dwhiley++;
  }while(dwhiley <= 5);

  //break
  for (int iteration2 = 0; iteration2<= 5; iteration2++){

    if(iteration2 == 3){
      break;
    }
    print("break loop $iteration2");

  }

  //continue
  for (int iteration3 = 0; iteration3 <=5 ; iteration3++){
   
    if(iteration3 ==3){
      continue;
    }
    print("continue loop $iteration3");
  }

  //control flow AND Null safety - typepromotion
  String? name = "zerwoasd";
    /*If name is null, the 'else' block would run. 
    HOWEVER: Because we assigned "zerowasd" above, the compiler knows 
    name is NOT null. This triggers the "unnecessary_null_comparison" warning.*/

  if (name != null){// Dart PROMOTES name from String? to String here.
    print(name.toUpperCase());

  }else{// This is "Dead Code" because name is hardcoded as "zerowasd" and can never be null in this specific execution.
    print("Name is null");
  }
}