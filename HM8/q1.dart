void main (){

}
abstract class loan {
  String  borrowerName ;
  double  loanAmount ;
  double interestRate ;

  loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int mouths);
}
