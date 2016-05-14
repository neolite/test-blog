class Category < ActiveRecord::Base
  has_closure_tree
  validates :title, :presence => true
  validates :desc, :presence => true
  has_many :posts

end