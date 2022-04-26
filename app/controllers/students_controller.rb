class StudentsController < ApplicationController
    
    def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        render json: Student.all.order(grade: :desc)
    end

    def highest_grade
        orderedStudents = Student.all.order(grade: :desc)
        render json: orderedStudents.first
    end
end 
