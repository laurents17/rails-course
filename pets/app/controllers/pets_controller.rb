class PetsController < ApplicationController
    
    def new
        @owners = Owner.all
    end
    
    def create
        pet = Pet.new
        pet.name = params[:name]
        pet.category = params[:category]
        pet.breed = params[:breed]
        pet.birthday = params[:birthday]
        pet.photo = params[:photo]
        pet.owner_id = params[:owner_id]
        pet.save
        redirect_to '/pets'
    end
    
    def show
        @pet = Pet.find(params[:id])
    end
    
    def index
        @pets = Pet.all
    end
    
    def edit
        @pet = Pet.find(params[:id])
        @owners = Owner.all
    end
    
    def update 
        pet = Pet.find(params[:id])
        pet.name = params[:name]
        pet.category = params[:category]
        pet.breed = params[:breed]
        pet.birthday = params[:birthday]
        pet.photo = params[:photo]
        pet.owner_id = params[:owner_id]
        pet.save
        redirect_to '/pets'
    end
    
    def delete
        pet = Pet.find(params[:id])
        pet.destroy
        redirect_to '/pets'
    end
end
