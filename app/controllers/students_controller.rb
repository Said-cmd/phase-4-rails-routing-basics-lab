class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end
     
    def grades 
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest_student = Student.all.order(grade: :desc).first
        render json: highest_student
    end

end
