class CatsController < ApplicationController


	get '/' do
		Cats.all.to_json
		# @message = "hello"

	end


	get '/:id' do
		@id = params[:id]
		Cats.find(@id).to_json
	end


	post '/' do

		@name = params[:name]
		@note =  params[:note]
		@img = params[:img]

		@newRow = Cats.new
		@newRow.name = @name
		@newRow.note = @note
		@newRow.img = @img
		@newRow.save
		@newRow.to_json
	end




	patch '/:id' do
		@id = params[:id]

		@name = params[:name]
		@note =  params[:note]
		@img = params[:img]

		@model = Cats.new
		@model.name = @name
		@model.note = @note
		@model.img = @img
		@model.save
		@model.to_json	
	end



	delete '/:id' do
 		@id = params[:id]
		@model = Cats.new
		@model.destroy
		{ :message => 'Your cat of id ' + @id + ' was adopted.' }.to_json
	end
	
	#delete in postman by DELETE --> /cats/1 --> SEND



end	