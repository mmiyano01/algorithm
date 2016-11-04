class DoublyNode
	attr_accessor :entry, :next, :prev 
  def initialize(entry)
		@entry = entry
		@next = nil
		@prev = nil
	end		
end
