require 'rubygems'
require 'compass' #must be loaded before sinatra
require 'sinatra'
require 'haml'    #must be loaded after sinatra

# set sinatra's variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, "views"
set :haml, :format => :html5 # default Haml format is :xhtml

enable :logging

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
end

# at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/css directory where all of the sass files can safely reside.
get '/css/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"css/#{params[:name]}", Compass.sass_engine_options )
end

get '/' do
  @name = params[:name]
  puts @name
  haml :index
end
