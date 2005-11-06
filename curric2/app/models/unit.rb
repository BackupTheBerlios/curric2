class Unit < ActiveRecord::Base
	belongs_to :subject
	has_many :documents
end
