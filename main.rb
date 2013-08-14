require 'sinatra'
require 'haml'

["/", "/add"].each do |path|
	get path do
		@current_page = "add"
		haml :add
	end
end

get '/view' do
	@current_page = "view"
	haml :view
end
