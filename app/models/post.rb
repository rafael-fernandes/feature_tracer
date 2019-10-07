class Post < ApplicationRecord
  def test(name)
    puts "test #{name}"
  end

  def truncated_desc(max_size)
    self.description.truncate(max_size)
  end
end
