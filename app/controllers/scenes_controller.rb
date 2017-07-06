class ScenesController < ApplicationController
  # TODO add a way to update arc for scenes
  # TODO start connecting characters with scenes, finally
  # TODO build out scene importer/parser?

  # NOTE checkboxes video https://vimeo.com/163880093

  def self.get_scenes_by_arc
    Scene.includes(:arc).order("arcs.arc_number", scene_number: :asc).each_with_object({}) do |scene, scene_hash|
      if !scene_hash.keys.include?(scene.arc)
        scene_hash[scene.arc] = [scene]
      else
        scene_hash[scene.arc] << scene
      end
    end
  end

  get '/scenes' do
    @scenes_by_arc = self.class.get_scenes_by_arc
    erb :'/scenes/index.html'
  end

  get '/scenes/new' do
    erb :'/scenes/new.html'
  end

  get "/scenes/:id" do
    @scene = Scene.find(params[:id])
    erb :'/scenes/show.html'
  end

  get '/scenes/:id/edit' do
    @scene = Scene.find(params[:id])
    erb :'/scenes/edit.html'
  end

  patch '/scenes/:id' do
    @scene = Scene.find(params[:id])
    if @scene.update(params[:scene])
      redirect "/scenes/#{@scene.id}"
    else
      erb :"/error.html"
    end
  end

  post '/scenes' do
    @scene = Scene.new(params[:scene])
    if @scene.save
      redirect :"/scenes/#{@scene.id}"
    else
      @errors = @scene.errors.full_messages
      erb :"/error.html"
    end
  end

# TODO add dropdown and backend functionality so we can save the following locations on the new/edit scene pages
# NOTE do location selections need to be within a separate form so we can avoid passing them in the scene params or can we just make them separate parts of the params, e.g. params[location]) -- look at labs and/or google to figure out if this is okay?
  # <p><label for="birth_place">Birthplace: </label><input type="checkbox" id="birth_place" name="scene[locations][birth_place]"></p>
  # <p><label for="residence">Place of Residence: </label><input type="checkbox" id="home" name="scene[locations][place_of_residence]"></p>
  # <p><label for="workplace">Workplace: </label><input type="checkbox" id="work_place" name="scene[locations][work_place]"></p>

# TODO add code to show checklist with all locations and allow "other significant locations" to be checked and saved with a note

# TODO add migrations for middle name, nickname, and alias
# TODO add migrations for "active" flag so we can logically delete scenes

end
