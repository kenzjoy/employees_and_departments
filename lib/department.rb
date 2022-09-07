class Department 
    attr_reader :name, 
                :employees, 
                :hire, 
                :expense, 
                :expenses

    def initialize(name)
        @name = name
        @employees = []
        @expenses = 0
    end

    def hire(name)
        @employees << name
    end

    def expense(amount)
        @expenses += amount
        expenses
    end
end