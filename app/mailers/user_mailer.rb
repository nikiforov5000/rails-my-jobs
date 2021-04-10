class UserMailer < ApplicationMailer
  default from: 'nikiforov5000@gmail.com'

  def my_app_email(cover_letter)
    @cover_letter = cover_letter
    @job = @cover_letter.job
    attachments['boris_nikiforov_cv.pdf'] = File.read('/home/boris/code/nikiforov5000/rails-my-jobs/app/assets/boris_nikiforov_cv.pdf')
    mail(to: @cover_letter.email, subject: "Application for #{@cover_letter.job.title.downcase}")
  end
end
