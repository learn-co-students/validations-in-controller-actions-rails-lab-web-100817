class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validate :is_fiction_or_nonfiction


  def is_fiction_or_nonfiction
    # byebug
    unless category == "Fiction" || category == "Non-Fiction"
      errors.add(:category, "is not a valid category.")
    end
  end

end
