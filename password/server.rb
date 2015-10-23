require 'sinatra'
require 'sinatra/reloader'
require_relative "models/password_checker.rb"



get "/login" do 
	erb :form
end 

post "/login" do 
	erb :form
end 		