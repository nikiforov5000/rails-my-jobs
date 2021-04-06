class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @job = Job.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @jobs = Job.all
    if @job.save
      flash[:success] = "job successfully created"
      redirect_to jobs_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
    @job = Job.find(params[:id])
    @cover_letter = CoverLetter.new(cover_letter_params)
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      flash[:success] = "Job was successfully updated"
      redirect_to @job
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @jobs = Job.all
    @job = Job.find(params[:id])
    if @job.destroy
      flash[:success] = 'Job was successfully deleted.'
      redirect_to jobs_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to @job
    end
  end

  private
  def cover_letter_params
    # params.require(:cover_letter).permit(:company, :title, :url, :state)
  end

  def job_params
    params.require(:job).permit(:company, :title, :url, :state)
  end
end
