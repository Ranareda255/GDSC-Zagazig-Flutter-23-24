
void main(){
BankAccount account1=BankAccount("2081234","Rana Reda" , 10000);
BankAccount account2=BankAccount("1056789", " shimaa" , 30000);
 account1.deposite(500);
  account1.whitedraw(200);
  account1.printBalance();

  account2.deposite(1000);
  account2.whitedraw(800);
  account2.printBalance();
}
class BankAccount {
String  accountnumber;
String accountholdername;
double balance;
 BankAccount(this.accountnumber,this.accountholdername,this.balance);
void deposite(double amount){
 balance =balance+ amount;
    print('${accountholdername}: Deposited ${amount}');
  }

  void printBalance() {
    print('${accountholdername}: Current balance is  ${balance}');
}
void whitedraw(double amount){
if (balance >= amount){
      balance = balance- amount;
      print('${accountholdername}: Withdrawn ${amount}');
    } else {
      print('${accountholdername}: Insufficient funds');
    }
}
}