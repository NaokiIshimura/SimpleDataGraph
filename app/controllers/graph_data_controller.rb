class GraphDataController < ApplicationController
  before_action :set_graph_datum, only: [:show, :edit, :update, :destroy]

  # GET /graph_data
  # GET /graph_data.json
  def index
    @graph_data = GraphDatum.all
  end

  # GET /graph_data/1
  # GET /graph_data/1.json
  def show
  end

  # GET /graph_data/new
  def new
    @graph_datum = GraphDatum.new
  end

  # GET /graph_data/1/edit
  def edit
  end

  # POST /graph_data
  # POST /graph_data.json
  def create
    @graph_datum = GraphDatum.new(graph_datum_params)

    respond_to do |format|
      if @graph_datum.save
        format.html { redirect_to @graph_datum, notice: 'Graph datum was successfully created.' }
        format.json { render :show, status: :created, location: @graph_datum }
      else
        format.html { render :new }
        format.json { render json: @graph_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graph_data/1
  # PATCH/PUT /graph_data/1.json
  def update
    respond_to do |format|
      if @graph_datum.update(graph_datum_params)
        format.html { redirect_to @graph_datum, notice: 'Graph datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @graph_datum }
      else
        format.html { render :edit }
        format.json { render json: @graph_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graph_data/1
  # DELETE /graph_data/1.json
  def destroy
    @graph_datum.destroy
    respond_to do |format|
      format.html { redirect_to graph_data_url, notice: 'Graph datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graph_datum
      @graph_datum = GraphDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graph_datum_params
      params.require(:graph_datum).permit(:user_id, :data1, :data2, :data3, :data4, :data5)
    end
end
