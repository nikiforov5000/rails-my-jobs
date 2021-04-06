class Job < ApplicationRecord
  has_one :cover_letter, dependent: :destroy
  def job_status
    case state
    when "none"
      "light"
    when "applied"
      "info"
    when "got respond"
      "success"
    when "rejected"
      "dark"
    else
      "warning"
    end
  end
end
