//class

class person{
 var name;
 int age;


person(var name, int age){    //default constructor
  this.name = name;
  this.age = age;
}
//another shortcut method

//person(this.name, this.age)

//named constructor
person.guest(){
  name = 'Sagar';
  age = 32;
}


 void showOutput(){
   print(name);
   print(age);
 }

}


void main(){
var person1 = person('Nista',20);
person1.showOutput();


var person2= person('simkhada',30);
person2.showOutput();

var person3  = person.guest();
person3.showOutput();

 }
