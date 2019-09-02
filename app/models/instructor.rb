class Instructor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def pass_student(student,test_name)
        student_match = BoatingTest.all.select do |boating_test|
            boating_test.student == student
        end
        test_match = BoatingTest.all.select do |boating_test|
            boating_test.name == test_name
        end
        if student_match == student && test_match == test_name
            boating_test.status = "passed"
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student,test_name)
        student_match = BoatingTest.all.select do |boating_test|
            boating_test.student == student
        end
        test_match = BoatingTest.all.select do |boating_test|
            boating_test.name == test_name
        end
        if student_match == student && test_match == test_name
            boating_test.status = "failed"
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end
    end
    


   



end
