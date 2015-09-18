class Post < ActiveRecord::Base
  has_many :comments

  def brief_text
    body.split[0..20].join(" ")
  end
end
