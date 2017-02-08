class Review < ActiveRecord::Base
  belongs_to :book
  validates :reviewer, :presence => true
  validates :content, :presence => true
end
