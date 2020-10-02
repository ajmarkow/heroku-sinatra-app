require("sinatra")
require("sinatra/reloader")
require("./lib/Dictionary")
require("pry")
also_reload("lib/**/*.rb")

# Quick test
get("/main") do
  erb(:mainpage)
end
