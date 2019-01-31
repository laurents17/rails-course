class StudentsController < ApplicationController
    #CRUD
    
    def new
        #render page that displays form to add new student
        @courses = Course.all
    end
    
    def create
        #action that handles form data from /new and adds it to db
        student = Student.new
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        student.save
        redirect_to '/students'
    end
    
    def index
        #render full course list
        @students = Student.all
    end
    
    def edit
        #render page with form to update course info
        @student = Student.find(params[:id])
    end
    
    def update
        #action that handles form data from /edit and adds it to db
        student = Student.find(params[:id])
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        redirect_to '/students'
    end
    
    def delete
        #action that deletes selected course
        student = Student.find(params[:id])
        student.destroy
        redirect_to '/students'
        
    end
    
    def details
        #render details page for a selected course
        @student = Student.find(params[:id])
        @course = Course.find(@student.course_id)
    end
end
