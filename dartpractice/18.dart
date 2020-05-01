//collection
void main(){
  //set
  var halogens = {'flourine', 'sodium', 'flourine'};//set is a collection of unique objects
  for(var n in halogens){
    print(n);
  }


//if empty set is to be defined
var gases={};// Hashmap type
print(gases.runtimeType);//dynamic

// var mud=<String>{};//Hash set
// print(mud.runtimeType);//string



// another method to define hash sets
var mud = <String>{};
Set <String> names = {};//hsh set
print(names.runtimeType);//string

//example of hash map
var student =Map();
  //key: value
  student['First']= 'Nista';
student ['second'] = 'Nikita';
 student['Third'] = 'Nitesh';

print(student['Third']);
}
