require "sinatra"
require "sinatra/reloader" if development?

configure :production do
  enable :reloader
end

get "/" do
  "Hello World"
end

get "/secret" do
  "I get paid tomorrow.."
end

get "/paid" do
  "Here is your money: $$$$"
end

get "/random-dog" do
  @name = ["Amigo", "Romeo", "Oreo"].sample
  erb :index
end

get "/dog-form" do
  erb :dog_form
end

post "/named-dog" do
  p params
  @name = params[:name]
  erb :index
end
