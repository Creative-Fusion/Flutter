main(){
  //string to int conversion
  var balance = int.parse('1000');
  assert(balance == 1000);

  var salary = double.parse('11.30');
  assert(salary == 11.30);

  // int to string conversion
  var x = 1.toString();
  assert(x=='1');

  var pie= 3.141.toString();
  assert(pie == 3.14);
}