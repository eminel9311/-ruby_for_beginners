module SavingsAccount
  def self.interest_rate(balance)
    case
    when balance >= 0 && balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance + balance * interest_rate(balance)/100
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    counter = 0
    while current_balance <= desired_balance
      current_balance = annual_balance_update(current_balance)
      counter +=1
    end
    counter
  end
end
