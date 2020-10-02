require "rubygems"
require "sinatra"
require "bundler"
require "config"

# Quick test
get("/") do
  erb(:mainpage)
end
