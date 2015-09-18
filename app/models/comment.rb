class Comment < ActiveRecord::Base
  include Gravtastic
  gravtastic
  belongs_to :post
end
