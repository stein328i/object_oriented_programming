

class Bank_account

    def initialize(current_balance)
      @current_balance = current_balance
    end

    def deposit(amount)
      @current_balance += amount
    end

    def withdraw(amount)
      @current_balance -= amount
    end

    def interest(amount)
      @current_balance += amount
    end

    def print_balance
      "the balance is #{@current_balance}"
    end
end


joe_account = Bank_account.new(10)
joe_account.deposit(20)
joe_account.withdraw(10)
joe_account.interest(0)
p joe_account.print_balance
