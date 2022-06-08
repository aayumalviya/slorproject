class Post < ApplicationRecord
	has_many :comments , dependent: :destroy

	searchable do
	   	 text :title
	   	 text :body
	end
end
