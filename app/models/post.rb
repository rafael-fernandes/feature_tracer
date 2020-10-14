class Post < ApplicationRecord
  validates :title, presence: true
  include TestGenerator::Observer
  def truncated_desc(max_size)
    self.description.truncate(max_size)
  end

  def create_date
    self.created_at.strftime("%d/%m/%y")
  end

  def upcase_title
    self.title.upcase
  end
end
