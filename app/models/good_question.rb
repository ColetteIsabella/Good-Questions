class GoodQuestion < ActiveRecord::Base
  attr_accessible :question, :why
  validates :question, :presence => true
  validates :why, :presence =>true	
end
