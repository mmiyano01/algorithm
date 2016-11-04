class SingleLinkedList
  require './single_node.rb'
	#include SingleNode

	def self.insertion
		p "insertion excuted"
		unless ARGV.length > 0
			p "INPUT ERROR"
			return
		end
    
		@head = nil
		tmp = nil
		ARGV.each_with_index do |e,i|
			if i == 0
				@head = SingleNode.new
				@head.entry = e
				@head.next = nil
				tmp = @head
			else
				node = SingleNode.new
				node.entry = e

				if i == 1
					@head.next = node
				else
					tmp.next = node	
				end	
				tmp = node
			end
		end	
	end
	def self.print
		p "print excuted"
		node = @head 
		while !node.nil?
			puts "#{node.entry}"
			node = node.next
		end	
  end
end
