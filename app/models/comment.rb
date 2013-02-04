class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter
  validates :commenter,:presence=>true 
  validates :body,:presence=>true
end
