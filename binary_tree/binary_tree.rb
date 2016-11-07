class BinaryTree
	require './binary_node.rb'

	def initialize(entry)
		@root = BinaryNode.new(entry)
	end

	def insertion(entry)
		walker = @root
		while walker != nil
			if walker.entry > entry && !walker.l_child
				walker.l_child = BinaryNode.new(entry)
			elsif walker.entry < entry && !walker.r_child
				walker.r_child = BinaryNode.new(entry)
			elsif walker.entry > entry
				walker = walker.l_child
			elsif walker.entry < entry
				walker = walker.r_child
			else
				return	
			end
		end
	end
  
	def pre_order(walker = @root)
		if walker.nil?
			return
		end
		puts walker.entry
		pre_order(walker.l_child)
		pre_order(walker.r_child)
	end	
end
