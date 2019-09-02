class Student

attr_accessor :first_name

@@all =[]

def initialize(first_name)
    @first_name = first_name
    @@all << self
end

def self.all 
    @@all 
end

def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
end

def self.find_student(name)
    self.all.select do |student|
    student.first_name == name
    end
end

def my_tests
    my_tests = BoatingTest.all.select do |boating_test|
        boating_test.student == self
    end
end


def grade_percentage
    passing_tests = my_tests.select do |boating_test|
        boating_test.status == "passed"
    end
     (passing_tests.length.to_f)/(my_tests.length.to_f) * 100
end










end
