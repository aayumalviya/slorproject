class Comment < ApplicationRecord
  belongs_to :post

  searchable do
    text :title, :body
    text :comments do
      comments.map { |comment| comment.body }
    end
  end
end
