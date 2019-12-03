class Post < ApplicationRecord
  validates :title, presence: true

  def test(name)
    puts "test #{name}"
  end

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
