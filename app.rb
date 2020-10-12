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

get("/words/") do
  @dictionaries = Dictionary.all()
  erb(:words)
end

post("/words") do
  @word = params[:wordtoadd]
  @definition = params[:definition]
  @dictionaries = Dictionary.all
  word = Dictionary.new({ :name => "#{@word}", :definition => "#{@definition}", :wordid => nil })
  word.save()
  erb(:words)
end


get("/word/:id") do
  id = params[:id]
  @dictionaries = Dictionary.all
  @word =Dictionary.find(id)
  erb(:word)
end

get("/definition/:id/update") do
  word= params[:id]
  @dictionaries = Dictionary.all
  @word =Dictionary.find(word)
  erb(:definitions)
end

post("/word/:id/delete") do
  dictionaries = Dictionary.all
  word =dictionaries.find(params['id'])
  word.delete
  erb(:mainpage)
end
# get("words/:id/edit") do
#   Page with form for updating album with an id of #{params[:id]}
# end

# patch("words/:id") do
#   "will update a word"
#  end
