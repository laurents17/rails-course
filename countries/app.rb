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
   question.flag = params[:flag]
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
#find by id
    question = Question.find(params[:id])
#update the record with the info from the form in edit.erb
    question.question = params[:question]
    question.answer = params[:answer]
    question.flag = params[:flag]
    question.save
   redirect '/questions'
end

get '/guess' do
   questions = Question.all
   index = rand(questions.length)
   @question = questions[index]
   erb :guess
end

get '/answer' do
   @question = Question.find(params[:id])
   erb :answer
end


get '/questions/delete' do
    @question = Question.find(params[:id])
    erb :delete
end

post '/questions/delete' do
    @question.delete
    
    redirect '/questions'
end
