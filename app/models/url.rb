class Url < ActiveRecord::Base
  validates_uniqueness_of :encoded_url
end