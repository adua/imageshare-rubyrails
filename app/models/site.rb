class Site < ActiveRecord::Base
  has_many :users, :dependent => :destroy
  has_many :uploads, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
end
