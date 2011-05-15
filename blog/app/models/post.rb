class Post < ActiveRecord::Base
  has_one :post_body, :dependent => :destroy
  accepts_nested_attributes_for :post_body
end
