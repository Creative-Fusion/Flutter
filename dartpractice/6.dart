import 'dart:io';

main(){
stdout.writeln('Enter your bank balance');
var bank_balance = stdin.readLineSync();
print('My bank_balance is $bank_balance');

stdout.writeln('Enter your salary');
var salary = stdin.readLineSync();
print('Your salary is $salary');
var total = '$bank_balance + $salary';
print(total);
print(bank_balance + salary);

}