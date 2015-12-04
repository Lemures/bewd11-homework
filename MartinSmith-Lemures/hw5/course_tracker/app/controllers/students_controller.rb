class StudentsController < ApplicationController
    def index
        @students = Student.all

        @studentAdd = Student.new
    end

    def create

        Student.create(student_params)

        redirect_to students_path

    end

    def student_params

        params.require(:student).permit(:name,:email,:age)

    end
end
