import '../HM9/ss.dart';
import 'q1.dart';

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
    print("Loan applied for ${loan.borrowerName}, Amount: ${loan.loanAmount}");
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print("${loan.borrowerName}'s monthly installment: ${installment.toStringAsFixed(2)}");
    }
  }
}