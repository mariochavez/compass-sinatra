require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require './app'

use Rack::ShowExceptions

set :env, :development
run Sinatra::Application
