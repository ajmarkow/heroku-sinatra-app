class Definition
    attr_reader(:id)
    atr_acessor(:text, :word_id)

    @@definitions = {}
    @@total_rows = 0

    def initialize (text, word_id, id)
      @text = text
      @word_id = word_id
      @id = id || @@total_rows += 1
    end

def ==(definition_to_compare)
  (self.text()== definition_to_compare.text())  && (self.word_id()==definition_to_compare.word_id())
end

def self.all
  @@definitions.values()
end

def save 
  @@definitions[self.id] = Definition.new(self.name, self.word_id, self.id)
end

def self.find(id)
  @@definition[id]
end

def update (text, word_id)
  self.text = text
  self.word_id = word_id
  @@definitions[self.id] = Definition.new (self.text, self.word_id, self.id)
end

def delete
  @@definition.delete(self.id)
end

def clear_out
  @@ definitions = {}
end