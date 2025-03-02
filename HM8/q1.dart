import 'dart:math';

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(super.borrowerName, super.loanAmount, super.interestRate);



  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 100 / 12;
    return (loanAmount * monthlyRate) /
        (1 - pow((1 + monthlyRate), months));
  }
}

class HomeLoan extends Loan {
  HomeLoan(super.borrowerName, super.loanAmount, super.interestRate);


  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 100 / 12;
    return (loanAmount * monthlyRate) /
        (1 - pow((1 + monthlyRate), -months));
  }
}

class CarLoan extends Loan {
  CarLoan(super.borrowerName, super.loanAmount, super.interestRate);



  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 100 / 12;
    double installment = (loanAmount * monthlyRate) /
        (1 - pow((1 + monthlyRate), months));

    if (loanAmount > 50000) {
      installment += loanAmount * 0.02; // 2% processing fee added
    }

    return installment;
  }
}

