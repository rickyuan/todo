class Calendar < ActiveRecord::Base
  has_many :lists
  
  def previous(query)
    unless query.nil?
      index = query.find_index(self.id)
      prev_id = query[index-1] unless index.zero?
      self.class.find_by_id(prev_id)
    end
  end

  def next(query)
    unless query.nil?
      index = query.find_index(self.id)
      next_id = query[index+1] unless index == query.size
      self.class.find_by_id(next_id)
    end
  end
  
end
