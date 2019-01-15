require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database: 'test.db'}

class Question < ActiveRecord::Base
end

get '/questions' do
    #load questions from database
    @questions = Question.all
    #display them in html
    erb :questions 
end

get '/questions/new' do
    erb :new
end 

post '/questions' do
   question = Question.new
   question.question = params[:question]
   question.answer = params[:answer]
   question.answer = params[:flag]
   question.save
   redirect '/questions'
end

get '/questions/edit' do
    #load the item you want to edit
    @question = Question.find(params[:id])
    #get the form for updating the info
    erb :edit
end

post '/questions/edit' do
    #update the record with the info from the form in edit.erb
    
end
