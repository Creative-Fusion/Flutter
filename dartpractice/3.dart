import 'dart:io';

main(){
stdout.writeln('What is your name?');
String name = stdin.readLineSync();
print('my name is $name');

stdout.writeln('What is your roll number?');
var roll_number= stdin.readLineSync();
print('My Roll_Number is:$roll_number');
}