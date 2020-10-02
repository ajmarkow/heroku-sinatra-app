require("sinatra")
require("sinatra/reloader")
require("./lib/Dictionary")
require("pry")
also_reload("lib/**/*.rb")

# Quick test
get("/") do
  erb(:mainpage)
end

get("/words") do
  erb(:words)
end

get("/words/:id") do
  "Shows a specific word based on id.  Use #{params[:id]}"
end

post("/words") do
  @word = params[:wordtoadd]
  @definition = params[:definition]
  word = Dictionary.new({ :name => "#{@word}", :definition => "#{@definition}", :wordid => "1" })
  word.save()
  erb(:mainpage)
end

# get("words/:id/edit") do
#   Page with form for updating album with an id of #{params[:id]}
# end

# patch("words/:id") do
#   "will update a word"
#  end
