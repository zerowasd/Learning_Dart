/// #VARIABLE var are infered datatypes 

void main(){

  ///static - defined by programmer
  int level = 0;
  
  String Sname = "Neeraj";
  /// Sname = 2; //can't be assigned

  /// infered - compiler decides the type
  var Name = "Neeraj";
  var Age = 22;

  ///dynamic - unkown type
  dynamic aged = "twenty two";
  aged = 22;


  ///printing
  print("var/infered $Name $Age Static ${level + 1}");
  print("dynamic $aged");
  print(Sname);

}