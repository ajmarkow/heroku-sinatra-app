require "rubygems"
require "sinatra"
require "bundler"

# Quick test
get("/") do
  erb(:mainpage)
end
