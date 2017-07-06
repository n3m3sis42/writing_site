class ApplicationController < Sinatra::Base

  register Sinatra::ActiveRecordExtension

  configure do
  	set :views, "./app/views"
  	set :public_dir, "public"
  end

  # TODO add login functionality and the concept of writers (users) and projects (books/series)

  get "/" do
  	erb :'/index.html'
  end

end
