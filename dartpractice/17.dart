// void main(){
//   List names = ['Sagar' , 'Nista', 'Shreya', 'Dipesh'];
//   print(names.length);
//   var names2 = [...names];
//   names[1] = 'Godvela';
//   for(var n in names2) {
//     print(n);
//   }
// }

void main(){
  List names=['nista','sagar'];
  print(names[0]);
  var names3= [...names];// dont changes the original value 
  names[0]= 'godvela';// changed values in 0th nd 1 position
  names[1]='aalu';
    print(names.length);// gives the length of list
 
  for(var n in names3){   // another way to define for loop
    print(n);
  }
}

