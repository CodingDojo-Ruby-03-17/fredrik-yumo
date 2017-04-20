require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end
  it 'has a getter for checkings attribute' do
    expect(@account.checkings).to eq(0)
    @account.deposit(15.50, "checkings")
    expect(@account.checkings).to eq(15.50)
  end
  it 'has a getter for total_money attribute' do
    @account.deposit(3.00, "checkings")
    @account.deposit(5.00, "savings")
    expect(@account.total_money).to eq(8.00)
  end
  it 'has a method withdraw that allows an amount to be taken out of an account' do
    @account.deposit(10.00, "checkings")
    @account.withdraw(5.00, "checkings")
    expect(@account.checkings).to eq(5.00)
    @account.deposit(30.25, "savings")
    @account.withdraw(15.25, "savings")
    expect(@account.savings).to eq(15.00)
  end
  it 'can\'t withdraw more money than is in an account' do
    expect{@account.withdraw(2.00, "checkings")}.to raise_error(InsufficientFundsError)
  end
  it 'doesn\'t have a getter for num_accounts attribute' do
    expect{@account.num_accounts}.to raise_error(NoMethodError)
  end
  it 'can\'t set the interest rate' do
    expect{@account.interest_rate = 0.09}.to raise_error(NoMethodError)
  end
end
