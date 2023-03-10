class Employee 

    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @boss.employees << self unless boss.nil?
    end

    def bonus(multiplier)

        if !self.is_a?(Manager)
            salary * multiplier
        end 

    end

    
end

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)

        total_salary = []

        queue = [self]

        until queue.empty?

            current = queue.shift

            if current.is_a?(Manager)

                underlings = current.employees

                underlings.each do |under|
                    p under.name
                    total_salary << under.salary
                    queue << under
                end
            # else
            #     total_salary << current.salary
            end

        end
        total_salary.sum * multiplier
    end





end




# jack = Employee.new("jack", "janitor")
# steve = Manager.new("steve", "manager",)
        
