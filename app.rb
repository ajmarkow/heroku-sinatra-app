require("sinatra")
require("sinatra/reloader")
require("./lib/Dictionary")
require("pry")
also_reload("lib/**/*.rb")

# Quick test
get("/") do
  @dictionaries = Dictionary.all()
  erb(:mainpage)
end

get("/words") do
  erb(:words)
end

post("/words") do
  @word = params[:wordtoadd]
  @definition = params[:definition]
  word = Dictionary.new({ :name => "#{@word}", :definition => "#{@definition}", :wordid => 1 })
  @dictionaries = Dictionary.all()
  word.save()
  erb(:words)
end

get("words/:id") do
  @word = Dictionary.find(params[:id].to_i())
  erb(:word)
end
# get("words/:id/edit") do
#   Page with form for updating album with an id of #{params[:id]}
# end

# patch("words/:id") do
#   "will update a word"
#  end
