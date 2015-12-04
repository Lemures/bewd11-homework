class CoursesController < ApplicationController
    def index
        @courses = Course.all
        render :courses
    end

    def create

        Course.create(course_params)

        redirect_to :courses

    end

    def course_params
        params.require(:course).permit(:name,:length,:difficulty)
    end
end
