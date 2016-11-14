class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	#conneect activerecord to db
	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2', # type of database
		:database => 'cats'
	)

	#set views, public 
	set :views, File.dirname(__FILE__) + '/../views' #out of the controllers folder  
	set :public_folder, File.dirname(__FILE__) + '/../public' 	

	# test index route
	get '/' do
		@message = "Welcome to the Cats API"
	end	


	#error messages
	not_found do
		{:message => "not found"}.to_json
	end 	

	get '/' do
		{:message => "home page"}.to_json
	end


end	

