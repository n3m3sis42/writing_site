class CharactersController < ApplicationController

  get '/characters' do
    @characters = Character.all.order(:first_name)
    erb :'/characters/index.html'
  end

  get '/characters/new' do
    erb :'/characters/new.html'
  end

  get "/characters/:id" do
    @character = Character.find(params[:id])
    erb :'/characters/show.html'
  end

  get '/characters/:id/edit' do
    @character = Character.find(params[:id])
    erb :'/characters/edit.html'
  end

  patch '/characters/:id' do
    @character = Character.find(params[:id])
    if @character.update(params[:character])
      redirect "/characters/#{@character.id}"
    else
      erb :"/error.html"
    end
  end

  post '/characters' do
    @character = Character.new(params[:character])
    if @character.save
      redirect :"/characters/#{@character.id}"
    else
      @errors = @character.errors.full_messages
      erb :"/error.html"
    end
  end

# TODO add dropdown and backend functionality so we can save the following locations on the new/edit character pages
# NOTE do location selections need to be within a separate form so we can avoid passing them in the character params or can we just make them separate parts of the params, e.g. params[location]) -- look at labs and/or google to figure out if this is okay?
  # <p><label for="birth_place">Birthplace: </label><input type="checkbox" id="birth_place" name="character[locations][birth_place]"></p>
  # <p><label for="residence">Place of Residence: </label><input type="checkbox" id="home" name="character[locations][place_of_residence]"></p>
  # <p><label for="workplace">Workplace: </label><input type="checkbox" id="work_place" name="character[locations][work_place]"></p>

# TODO add code to show checklist with all locations and allow "other significant locations" to be checked and saved with a note

# TODO add migrations for middle name, nickname, and alias
# TODO add migrations for "active" flag so we can logically delete characters

end
