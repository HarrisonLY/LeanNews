class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
 # before_action :require_signin, except: [:index]
 # before_action :require_admin, except: [:index]

  def index
    @jobs = Job.all
  end

  def show
  end

  def admin
    @jobs = Job.order("created_at desc").page(params[:page]).per_page(5)
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :description, :company, :job_type, :slug, :link, :price, :country, :city, :state, :special, :created_at, :updated_at)
    end
end
