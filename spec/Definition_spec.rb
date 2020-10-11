require("Definition")
require("rspec")

describe ("Definition") do
  it("returns an empty array for storing word definitions") do
    testword = Dictionary.new({ :name => "motorcycle", :definition => "a vehicle with two wheels", :wordid => nil })
    testdictionary = Definition.new({ :text => "a flying death machine", :id => nil, :wordid => 1 })
    expect(testdictionary.text()).to(eq('a flying death machine'))
  end
end

describe ("update") do
  it("updates word definitions") do
    testdictionary = Definition.new({ :text => "a flying death machine", :id => 1, :wordid => 1 })
    testdictionary.update('not a flying death machine')
    expect(testdictionary.text()).to(eq('not a flying death machine'))
  end
end

describe('#delete') do
  it('Deletes a definition by id') do
    testdictionary = Definition.new({ :text => "a flying death machine", :id => nil, :wordid => 1 })
 testdictionary.save()
    testdictionary2 = Definition.new({ :text => "not a flying death machine", :id => nil, :wordid => 1 })
    testdictionary2.save()
    testdictionary2.delete()
    expect(Definition.all).to(eq([testdictionary]))
  end
end