class Transfer
  attr_accessor :status, :bankaccount
  attr_reader :amount, :sender, :receiver

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

def valid?
sender.valid? && receiver.valid?
end

def execute_transaction
    if @sender.balance > @amount && @status == "open"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end


def reverse_transfer
  if self.execute_transaction && valid? && @receiver.balance > amount && status == "complete"
  @receiver.balance = @receiver.balance - amount
  @sender.balance = @sender.balance + amount
  @status = "reversed"
  end
end

end 

