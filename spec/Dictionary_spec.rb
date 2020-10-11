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
  it("changes a word") do
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => 2 })
    testdictionary.update('automobile')
    expect(testdictionary.name).to(eq('automobile'))
  end
end

describe("find") do
  it("returns a specific word") do
    testdictionary2 = Dictionary.new({ :name => "motorcycle", :definition => "a vehicle with two wheels", :wordid => nil })
    testdictionary = Dictionary.new({ :name => "car", :definition => "a vehicle", :wordid => nil })
    testdictionary.save()
    testdictionary2.save()
    testoffind =testdictionary2.find(1)
    expect(testoffind.name).to(eq('motorcycle'))
  end
end