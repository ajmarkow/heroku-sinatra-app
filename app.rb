require "rubygems"
require "sinatra"
require "bundler"

# Quick test
get("/") do
  erb(views / :mainpage)
end
