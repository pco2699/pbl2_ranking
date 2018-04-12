class PredictDataController < ApplicationController
  before_action :set_predict_datum, only: [:show, :edit, :update, :destroy]

  # GET /predict_data
  # GET /predict_data.json
  def index
    # params[:sort] = params[:sort] + " DESC"
    @predict_data = PredictDatum.page(params[:page]).per(100).order(params[:sort])
  end

  # GET /predict_data/1
  # GET /predict_data/1.json
  def show
  end

  # GET /predict_data/new
  def new
    @predict_datum = PredictDatum.new
  end

  # GET /predict_data/1/edit
  def edit
  end

  # POST /predict_data
  # POST /predict_data.json
  def create
    @predict_datum = PredictDatum.new(predict_datum_params)

    respond_to do |format|
      if @predict_datum.save
        format.html { redirect_to @predict_datum, notice: 'Predict datum was successfully created.' }
        format.json { render :show, status: :created, location: @predict_datum }
      else
        format.html { render :new }
        format.json { render json: @predict_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predict_data/1
  # PATCH/PUT /predict_data/1.json
  def update
    respond_to do |format|
      if @predict_datum.update(predict_datum_params)
        format.html { redirect_to @predict_datum, notice: 'Predict datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @predict_datum }
      else
        format.html { render :edit }
        format.json { render json: @predict_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predict_data/1
  # DELETE /predict_data/1.json
  def destroy
    @predict_datum.destroy
    respond_to do |format|
      format.html { redirect_to predict_data_url, notice: 'Predict datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    PredictDatum.import(params[:file])
    redirect_to "/predict_data"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predict_datum
      @predict_datum = PredictDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predict_datum_params
      params.require(:predict_datum).permit(:image_name, :beautiful_sky, :not_beautiful_sky, :other)
    end
end
