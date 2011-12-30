class User < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :calendars
  has_many :lists, :through => :calendars
end
