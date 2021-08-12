class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    # able to find param(id) from url students/2
    student = Student.find(params[:id])
    # turn into JSON data
    render json: student
  end
end
