class CoverLettersController < ApplicationController
  def new
    @cover_letter = CoverLetter.new
  end

  def create
    @cover_letter = CoverLetter.new(cover_letter_params)
    @job = Job.find(params[:job_id])
    @cover_letter.job = @job


      if @cover_letter.save
        UserMailer.with(cover_letter: @cover_letter).my_app_email(@cover_letter).deliver_now
        flash[:success] = "CoverLetter successfully created"
        redirect_to @cover_letter
      else
        flash[:error] = "Something went wrong"
        render @job
      end

  end
  

  def show
    @cover_letter = CoverLetter.find(params[:id])
    @job = @cover_letter.job
  end

  def destroy
  end

  private

  def cover_letter_params
    params.require(:cover_letter).permit(:staff_name, :platform, :email, :job_id)
  end
end
