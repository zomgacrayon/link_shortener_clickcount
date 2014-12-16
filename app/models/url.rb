class Url < ActiveRecord::Base
  # Remember to create a migration!
  before_create :shortener

  def shortener
    self.shorten_url = SecureRandom.hex(3)
  end
end
