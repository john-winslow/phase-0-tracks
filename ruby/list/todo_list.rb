class TodoList

	def initialize(list)
		@todo_list = list
	end

	def get_items
		@todo_list
	end

	def add_item(item)
		@todo_list << item
	end

	def delete_item(item)
		@todo_list.delete(item)
	end

	def get_item(index)
		@todo_list[index]
	end
end