class BankAccount
  attr_accessor :name, :balance, :status

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end


def deposit(amount)
  @balance = @balance + amount
end 

def display_balance 
  balance = @balance
  "Your balance is $#{balance}."
end 


def valid?
  if @status == "open" && @balance > 0
    true 
  else 
    false 
  end
end 

def close_account 
  @status = "closed"
end 


end 