class String
  def is_i?
    /\A[-+]?\d+\z/ === self
  end

  def is_email?
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i === self
  end
end