// class
class X{
 final name;//object property
  static const  int age = 20;//class property
  X(this .name);
}

main(){
  var x =X('Nista');
  print(x.name);

  print(X.age); //

  var y =X('Nista');
  print(y.name);

}

//final and const means value of tthe name
 //cannot be changed so in order to assaign more 
 //name here var must be used instead of final.