class student{
  var name;
  int age;

  student(this.name, this.age);

  void showOutput(){
    print(name);
     print(age);

  }
}

class teacher extends student{
  var salary;


teacher(var name, int age, this.salary) : super(name, age);
void showOutput(){
  super.showOutput();
  print(this.salary);
}
}
void main(){
  var teacher1 = teacher('Nista', 20,5000);
  teacher1.showOutput();

}
