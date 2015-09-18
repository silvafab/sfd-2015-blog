require "digest"

class User < ActiveRecord::Base
  include Gravtastic
  gravtastic

  before_save :hash_password

  private
  
  def hash_password
    self.password = Digest::MD5.hexdigest(self.password)
  end
end
