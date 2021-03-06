#!/usr/bin/env ruby
# encoding: UTF-8

require 'sinatra'

class HelloSinatra < Sinatra::Base
  set :bind, '0.0.0.0'
  # set :port, 80 # to deploy on tcp port 80, sudo needed
  set :environment, :production

  configure :production do
    use Rack::Session::Pool
    set :erb, :trim => '-'
  end

  get '/' do
      'Hello Sinatra'
  end

  run! if app_file == $0
end
