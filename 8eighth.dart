///collections 

void main(){
    //list - ordered
    List<String> names = ['zerowasd','two','three'];

    var inferedname = ['zerowasd','two','three'];

    //accessing
    print(names[0]);
    print(inferedname[0]);

    //modifying
    print("original $names");
    names.add('four');

    print("added $names");
    names.remove('three');

    print("removed $names");

    var nameschanged = names[0] = "zero";
    print(nameschanged);
    
    //list properties and methods
    print("length $names.length");
    print(names.isEmpty);
    print(names.contains("zero"));

    //list and null safety
    List<String?/** IMP */> names2 = ["zerwoasd","two",null];// defined the elements can be null
    List<String>? names3;//list can be null
    print("$names2 $names3");

    
}