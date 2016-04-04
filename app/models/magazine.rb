class Magazine < ActiveRecord::Base
	has_many :articles
	validates :name,:presence => {:message => "Magazine Name can't be blank"}
end
