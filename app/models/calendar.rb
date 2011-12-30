class Calendar < ActiveRecord::Base
  has_many :lists
  belongs_to :user
  
def previous
  self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
end

def next
  self.class.first(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
end

def last
  self.class.last
end

end
