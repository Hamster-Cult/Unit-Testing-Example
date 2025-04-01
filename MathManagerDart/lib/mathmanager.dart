class mathmanager{

	int add(int a, int b){
			return a+b;
	}

	int subtract(int a, int b){
			return a-b;
	}

	int multiply(int a, int b){
			return a*b;
	}

  double interest(int amount, term) {
    if (amount <= 0) {
        return -1;
    }

    if (term == 1) { 
      return 0.038 * amount / 12;
    }
    else if (term == 2) {
        return 0.036 * amount / 12;
    } else {
        return -2;
    }

    // double newAmount;
    // newAmount = (amount * 3.8) / 100;
    // newAmount = newAmount - amount;
    // newAmount = newAmount / 12;
    // String returnedAmount;
    // returnedAmount = newAmount.toStringAsFixed(2);
    // return returnedAmount;
  }

  double tax(int income) {
    if (income <= 0) {
      return -1;
    }

    if (income <= 12570) {
      return 0;
    }
    else if (income <= 502750) {
      return 20 / 100 * income - 12570;
    }
    else if (income <= 125140) {
			return 20 / 100 * (50270 - 12570) + 40 / 100 * (income - 50270);
    }
    else if (income > 125140) {
			return 20 / 100 * (50270 - 12570) + 40 / 100 * (125140 - 50270) + 45 / 100 * (income - 125140);
    }
    else {
        return -1;
    }
  }

  String degree(int fyp, int comp1, int comp2, int opt1, int opt2) {
    if (fyp < 0 || comp1 < 0 || comp2 < 0 || opt1 < 0 || opt2 < 0) {
      return "error";
    }
    if (fyp > 100 || comp1 > 100 || comp2 > 100 || opt1 > 100 || opt2 > 100) {
      return "error";
    }
    int m = [comp1, comp2, opt1, opt2].reduce((a, b) => a < b ? a : b);
    double avg = (fyp + comp1 + comp2 + opt1 + opt2 - m) / 4;
    if (avg >= 70) {
      return "first";
    } else if (avg < 70 && avg >= 60) {
      return "2:1";
    } else if (avg < 60 && avg >= 50) {
      return "2:2";
    } else if (avg < 50 && avg >= 40) {
      return "third";
    } else {
      return "fail";
    }
  }
}