import 'dart:io';

void main (){
print ("please, Enter a number");

int num = int.parse(stdin.readLineSync()!);
int Square= num*num ;
print("Result of Multiplication is $Square");

}
