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

  def job_params
    params.require(:job).permit(:company, :title, :url, :state)
  end
end
