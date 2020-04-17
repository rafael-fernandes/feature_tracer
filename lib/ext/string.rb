class String
  def is_i?
    /\A[-+]?\d+\z/ === self
  end

  def is_email?
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i === self
  end

  def is_float?
    self.to_f.to_s === self
  end

  def is_phone?
    /^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$/ === self ||
        /^\([1-9]{2}\)(?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$/ === self
  end
end