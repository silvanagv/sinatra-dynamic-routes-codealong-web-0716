require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = "danny"
    "Goodbye #{@user_name}"
  end

  # This is a sample dynamic route.
  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1*@num2}"
  end


end
