class BankAccount
  attr_reader :checkings, :savings, :num_accounts
  @@num_accounts = 0
  def initialize
    @account_number = get_account_number
    @checkings = 0
    @savings = 0
    @interest_rate = 0.01
    @@num_accounts += 1
  end

  def account_information
    puts "Account Number = #{@account_number}"
    puts "Checking Account balance = $#{@checkings}"
    puts "Savings Account balance = $#{@savings}"
    puts "Total Money = $#{total_money}"
    puts "Interest Rate = $#{@interest_rate}"
  end

  # adds money to either checkings or savings account
  def deposit amount, account
    if account == "checkings"
      @checkings += amount.round(2)
    else
      @savings += amount.round(2)
    end
    self
  end

  # subtracts money from either checkings or savings account if there are sufficient funds
  def withdraw amount, account
    if account == "checkings"
      if amount > @checkings
        raise InsufficientFundsError
      else
        @checkings -= amount.round(2)
      end
    else
      if amount > @savings
        raise InsufficientFundsError
      else
        @savings -= amount.round(2)
      end
    end
    self
  end

  def total_money
    (@checkings + @savings).round(2)
  end

  def num_accounts
    puts @@num_accounts
  end

  # sets bank account number to a random 8-digit number
  private
    def get_account_number
      account_number = String.new
      for i in 1..8
        account_number += rand(1..9).to_s
      end
      account_number.to_i
    end
end

a = BankAccount.new
a.deposit(25.99, "checkings").deposit(10, "savings").withdraw(2.25, "checkings").account_information

b = BankAccount.new
b.deposit(34.90, "checkings").deposit(14.36, "savings").withdraw(11.29, "checkings").account_information
b.deposit(10.25, "savings").withdraw(12.00, "savings") # raises InsufficientFundsError
