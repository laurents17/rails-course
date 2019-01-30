class CoursesController < ApplicationController
    #CRUD
    
    def new
        #render page that displays form to add new course
    end
    
    def create
        #action that handles form data from /new and adds it to db
        course = Course.new
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        course.save
        redirect_to '/courses'
    end
    
    def index
        #render full course list
        @courses = Course.all
    end
    
    def edit
        #render page with form to update course info
        @course = Course.find(params[:id])
    end
    
    def update
        #action that handles form data from /edit and adds it to db
        course = Course.find(params[:id])
        course.name = params[:name]
        course.location = params[:location]
        course.description = params[:description]
        redirect_to '/courses'
    end
    
    def delete
        #action that deletes selected course
        course = Course.find(params[:id])
        course.destroy
        redirect_to '/courses'
    end
    
    def details
       @course = Course.find(params[:id]) 
    end
end
