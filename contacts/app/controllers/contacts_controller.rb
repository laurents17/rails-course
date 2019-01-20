class ContactsController < ApplicationController
    
    #CRUD ops for class Contacts
    
    def index #lists all contacts
        @contacts = Contact.all
    end
    
    def new #renders /new.html.erb 
    end
    
    def create #posts contact to /contacts from /new/html.erb form
        contact = Contact.new
        contact.first_name = params[:first_name]
        contact.last_name = params[:last_name]
        contact.phone = params[:phone]
        contact.email = params[:email]
        contact.address = params[:address]
        contact.city = params[:city]
        contact.state = params[:state]
        contact.zip = params[:zip]
        contact.save
        redirect_to '/contacts'
    end
    
    def details
        @contact = Contact.find(params[:id])
    end
    
    def edit #renders edit template
        @contact = Contact.find(params[:id])
    end
    
    def update #posts edits to contacts from form
        @contact = Contact.find(params[:id])
        @contact.first_name = params[:first_name]
        @contact.last_name = params[:last_name]
        @contact.phone = params[:phone]
        @contact.email = params[:email]
        @contact.address = params[:address]
        @contact.city = params[:city]
        @contact.state = params[:state]
        @contact.zip = params[:zip]
        @contact.save
        redirect_to '/contacts'
    end
    
    def verify_delete
        @contact = Contact.find(params[:id])
    end
    
    def delete
        @contact = Contact.find(params[:id])
        @contact.delete
        redirect_to '/contacts'
    end
    
end
