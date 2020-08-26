class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if @balance <= 0
      false
    elsif @status == "closed"
      false
    else
      true
    end
  end

  def close_account
    self.status = "closed"
  end
end
