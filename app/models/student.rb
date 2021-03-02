class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_message 
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def change_status
    
    if self.active
      self.update(active: false)
    else
      self.update(active: true)
    end
  end

end