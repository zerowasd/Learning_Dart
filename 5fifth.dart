///final and const

void main(){
  const String constantvar = "zerowasd"; //compile time + canonicalization
  /// #constantvar = "n"; can't reassign constant variable
  print(constantvar);

  final String finalvar = "zerowasd";// run time
  print(finalvar);
}