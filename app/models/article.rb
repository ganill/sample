class Article < ApplicationRecord
	has_many :comments, as: :commentable
	belongs_to :user ,foreign_key: "editor_id"
end
