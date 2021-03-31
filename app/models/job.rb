class Job < ApplicationRecord
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
