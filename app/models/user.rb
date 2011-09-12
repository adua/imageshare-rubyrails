class User < ActiveRecord::Base
  belongs_to :site
  validates :site_id, :presence => true
  validates :name,  :uniqueness => true, :presence => true
end
