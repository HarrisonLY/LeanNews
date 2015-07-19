class DailiesController < ApplicationController
  before_action :set_daily, only: [:show, :edit, :update, :destroy]
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  # GET /dailies
  # GET /dailies.json
  def index
    @dailies = Daily.all
    @recent = Daily.last
    @second = Daily.order(:created_at).offset(1).last
  end

  # GET /dailies/1
  # GET /dailies/1.json
  def show
   @daily = Daily.find_by!(slug: params[:id])
  end

  def admin
   @dailies = Daily.order("created_at desc").page(params[:page]).per_page(5)
    end

  # GET /dailies/new
  def new
    @daily = Daily.new
  end

  # GET /dailies/1/edit
  def edit
  end

  # POST /dailies
  # POST /dailies.json
  def create
    @daily = Daily.new(daily_params)

    respond_to do |format|
      if @daily.save
        format.html { redirect_to @daily, notice: 'LeanDaily LeanDaily Post was successfully created.' }
        format.json { render :show, status: :created, location: @daily }
      else
        format.html { render :new }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailies/1
  # PATCH/PUT /dailies/1.json
  def update
    respond_to do |format|
      if @daily.update(daily_params)
        format.html { redirect_to @daily, notice: 'LeanDaily LeanDaily Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily }
      else
        format.html { render :edit }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailies/1
  # DELETE /dailies/1.json
  def destroy
    @daily.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'LeanDaily Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find_by!(slug: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_params
      params.require(:daily).permit(:title, :content, :created_at, :updated_at, :slug)
    end

end
