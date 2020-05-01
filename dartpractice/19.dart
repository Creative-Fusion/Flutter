//Function

 main(){
  showOutput(square(2));
  showOutput(square(2.5));
  print(square.runtimeType);

}
dynamic square(var num)=> num*num;

void showOutput(var msg){
  print(msg);
}


//aanomnymous function
main(){
  var list = ['apple', 'bananas', 'oranges'];
  list.forEach ((item){
  print(item);

});
}

//arguments in function
void main(){
  print(sum(2,2));

}
dynamic sum(var num1,var num2) => num1+num2;//positional argument

//named arguemnt/parameter is always optional

void main(){
  print(sum(num2: 3, num1:2));
}
dynamic sum({ var num1, var num2})=> num1+num2;

//mixed arguemnts
void main(){
  print(sum(10));
   print(sum(10, num2:6));
}
dynamic sum(var num1,{var num2=0})=> num1+num2;

//positional paraneter can also be made optional
void main(){
  print(sum(2,2));
   print(sum(9));

}
dynamic sum(var num1,[var num2=0])=> num1+num2;