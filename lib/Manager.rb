class Manager

    attr_accessor :department, :age
    attr_reader :name

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
     Employee.all.select {|employee|employee.manager == self}
    end

    def hire_employee(name, salary)
       Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager|manager.department }
    end

    def self.average_age
        ages = self.all.map {|manager|manager.age}
        ages.sum/ages.length.to_f
        # go through managers
        # find their ages
        # collect their ages
        # determine the sum
        # get the average
       # binding.pry
    end

    



end
