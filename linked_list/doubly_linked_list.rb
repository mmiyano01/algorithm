class DoublyLinkedList
  require './doubly_node.rb'
	def self.insertion
		if ARGV.length < 1
			puts "ERROR: NEED MORE INPUT"
			return
		end

		tmp = nil
		@head = nil
		@tail = nil
		ARGV.each_with_index do |e,i|
			if i == 0
				@head = DoublyNode.new(e)
				tmp = @head
				@tail = tmp
			else
				node = DoublyNode.new(e)
        tmp.next = node
				node.prev = tmp
				@tail = node
				tmp = node
			end	
		end	
	end	

	def self.print
		walker = @head
		puts "head to tail"
		while !walker.nil?
      puts walker.entry
			walker = walker.next
		end	
		walker = @tail
		puts "tail to head"
		while !walker.nil?
			puts walker.entry
			walker = walker.prev
		end	
	end		
end
