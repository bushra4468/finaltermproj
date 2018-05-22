class DrontestsController < ApplicationController
  before_action :set_drontest, only: [:show, :edit, :update, :destroy]

  # GET /drontests
  # GET /drontests.json
  def index
    @drontests = Drontest.all
  end

  # GET /drontests/1
  # GET /drontests/1.json
  def show
  end

  # GET /drontests/new
  def new
    @drontest = Drontest.new
  end

  # GET /drontests/1/edit
  def edit
  end

  # POST /drontests
  # POST /drontests.json
  def create
    @drontest = Drontest.new(drontest_params)

    respond_to do |format|
      if @drontest.save
        format.html { redirect_to @drontest, notice: 'Drontest was successfully created.' }
        format.json { render :show, status: :created, location: @drontest }
      else
        format.html { render :new }
        format.json { render json: @drontest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drontests/1
  # PATCH/PUT /drontests/1.json
  def update
    respond_to do |format|
      if @drontest.update(drontest_params)
        format.html { redirect_to @drontest, notice: 'Drontest was successfully updated.' }
        format.json { render :show, status: :ok, location: @drontest }
      else
        format.html { render :edit }
        format.json { render json: @drontest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drontests/1
  # DELETE /drontests/1.json
  def destroy
    @drontest.destroy
    respond_to do |format|
      format.html { redirect_to drontests_url, notice: 'Drontest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drontest
      @drontest = Drontest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drontest_params
      params.require(:drontest).permit(:name, :phone, :address, :appointment)
    end
end
