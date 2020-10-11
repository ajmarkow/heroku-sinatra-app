require("Dictionary")
require("rspec")

describe ("Dictionary") do
  it("returns an empty array for storing word hashes") do
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 1 })
    expect(testdictionary.all()).to(eq([]))
  end
end

describe("save") do
  it("adds a new word to the @@wordcontainer hash") do
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 2 })
    testdictionary.save()
    expect(testdictionary.name).to eq("car")
    expect(testdictionary.definition).to eq("a vehicle")
    expect(testdictionary.wordid).to eq(2)
  end
end

describe("clear") do
  it("clears word container") do
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 2 })
    testdictionary.clear()
    expect(testdictionary.all).to(eq([]))
  end
end

describe("update") do
  it("clears word container") do
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 2 })
    testdictionary.update()
    expect(testdictionary.all).to(eq([]))
  end
end

describe("find") do
  it("returns a specific word") do
    testdictionary2 = Dictionary.new({ :name => "motorcycle", :definition => "a vehicle with two wheels", :wordid => 1 })
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 2 })
    testdictionary.find(2)
    expect(testdictionary.find(2)).to(eq(testdictionary))
  end
end