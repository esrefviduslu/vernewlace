class Category < ApplicationRecord
	has_many :places

	def self.list_categories
		Category.select("id, name").map {|x| [x.id, x.name] }
	end
end
