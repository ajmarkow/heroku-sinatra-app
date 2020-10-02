require ("rspec")

class Dictionary
  attr_accessor(:name, :definition, :wordid)
  @@wordcontainer = {}
  @@total_rows = 0

  def all
    @@wordcontainer.values()
  end

  def save
    @@wordcontainer[self.wordid] = Dictionary.new({ :name => self.name, :definition => self.definition, :wordid => self.wordid })
  end

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = attributes.fetch(:definition)
    @wordid = @wordid || @@total_rows += 1
  end

  def clear
    @@wordcontainer = {}
    @@total_rows = 0
  end

  def find(id)
    @@wordcontainer[id]
  end
end
