require ("rspec")

class Dictionary
  attr_accessor(:name, :definition, :wordid)
  @@wordcontainer = {}

  def all
    @@wordcontainer.values()
  end

  def save
    @@wordcontainer = Dictionary.new({ :name => self.name, :definition => self.definition, :wordid => self.wordid })
  end

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = attributes.fetch(:definition)
    @wordid = attributes.fetch(:wordid)
  end
end
