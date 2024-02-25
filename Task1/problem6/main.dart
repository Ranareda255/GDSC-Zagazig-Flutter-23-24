import 'dart:io';

void main (){
print("Enter a number");
 int number = int.parse(stdin.readLineSync()!);
if (number%2==0) {
  
  print("the num is even");
}else{
  print("the num is odd");

}
}