class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :content, minimum: 100
  validates_inclusion_of :category, in: ['Fiction', 'Non-Fiction']
end
