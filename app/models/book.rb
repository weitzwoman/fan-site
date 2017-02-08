class Book < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :creation_date, :presence => true
  validates :author, :presence => true
end
