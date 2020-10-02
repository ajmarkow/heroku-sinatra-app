require "rubygems"
require "sinatra"
require "bundler"
require "config"

# Quick test
get("/main") do
  erb(:mainpage)
end
