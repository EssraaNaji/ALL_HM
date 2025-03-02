void main (){
PersonalLoan p1 =PersonalLoan("essraa", 200, interestRate)
}
abstract class loan {
  String  borrowerName ;
  double  loanAmount ;
  double interestRate ;

  loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int mouths);
}
class PersonalLoan extends loan {
  PersonalLoan(super.borrowerName, super.loanAmount, super.interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    return months * 10 /100 ;
  }

}