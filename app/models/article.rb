class Article < ActiveRecord::Base
	belongs_to :magazine
	has_many :comments
end
