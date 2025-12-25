///null


void main (){
  String? name;

  print(name ?? "neeraj"); /*
                            output is null if name is null - but since "neeraj" it will show so. 
                            the value is not assigned to the variable but just shown if exists(??)
  */
  name = "yadav";

  print(name);
}