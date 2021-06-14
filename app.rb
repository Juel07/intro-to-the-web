require "sinatra"
require "sinatra/reloader" if development?

configure :production do
  enable :reloader
end

get "/" do
  "Hello World"
end

get "/rich" do
  erb(:index)
end

get "/secret" do
  "I get paid tomorrow.."
end

get "/paid" do
  "Here is your money: $$$$"
end
