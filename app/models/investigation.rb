class Investigation < ApplicationRecord
  belongs_to :incident
  belongs_to :user
  belongs_to :department

  def self.search(data) 
    condition = "id > 0"
    if data[:status] && data[:status].length > 0
      condition += " AND status = '#{data[:status]}'"
    end
    if data[:user_id] && data[:user_id].to_s.length > 0
      condition += " AND user_id = #{data[:user_id]}"
    end

    where(condition)
  end
end
