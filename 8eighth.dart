///collections - List[order], Set{unique}, Map{key-value}

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

    ///sets - unique values only
    Set<int> numbers = {1,2,3,3,4,5,5};//shows warning (intentional)
    print("sets $numbers");//removes duplicates automatically , do not guarantee order

    //set operation
    numbers.add(6);
    print("add $numbers");

    numbers.remove(3);
    print("add $numbers");
    print(numbers.contains(6));//usage -> when you want uniqueness, order does not matter, fast look up

    ///maps - key-value pairs
    Map<String, int> scores= {
        "Math" : 90,
        "Science" : 84
    };

    ///infered map - it's short and simple
    var inferedscores = {
        "Math": 90,
        "Science": 85,
    };
    
    print(scores);
    print(inferedscores);

    //accessing map values
    print(scores["Math"]);//if key does not exist returns null

    //map - add and update
    scores["English"] = 80;
    print(scores);
    inferedscores["Math"] = 80;
    print(inferedscores);

    //remove
    scores.remove("Science");
    print(scores);

    //properties
    print(scores.keys);
    print(scores.values);
    print(scores.containsKey("Math"));

    /**
     * IMP
     * Map<String, int>? map1; -> map can be null
     * Map<String, int?> map2; -> map-value can be null
     * 
     */

    ///iterating
    //list and set

    for(var subject in names){
        print("iteration $subject");
    }

    //map
    print(scores);
    for (var entry in scores.entries/**this is getter not a method */){
        print("${entry.key} : ${entry.value}");
    }

    //var set = <int>{}; BY DEFAULT {} BECOMES A MAP SO WHEN MAKING INFERED SET DO IT LIKE THIS

}