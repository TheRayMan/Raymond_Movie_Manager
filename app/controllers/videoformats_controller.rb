class VideoformatsController < ApplicationController
  before_action :set_videoformat, only: [:show, :edit, :update, :destroy]

  # GET /videoformats
  # GET /videoformats.json
  def index
    @videoformats = Videoformat.all
  end

  # GET /videoformats/1
  # GET /videoformats/1.json
  def show
  end

  # GET /videoformats/new
  def new
    @videoformat = Videoformat.new
  end

  # GET /videoformats/1/edit
  def edit
  end

  # POST /videoformats
  # POST /videoformats.json
  def create
    @videoformat = Videoformat.new(videoformat_params)

    respond_to do |format|
      if @videoformat.save
        format.html { redirect_to @videoformat, notice: 'Videoformat was successfully created.' }
        format.json { render :show, status: :created, location: @videoformat }
      else
        format.html { render :new }
        format.json { render json: @videoformat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videoformats/1
  # PATCH/PUT /videoformats/1.json
  def update
    respond_to do |format|
      if @videoformat.update(videoformat_params)
        format.html { redirect_to @videoformat, notice: 'Videoformat was successfully updated.' }
        format.json { render :show, status: :ok, location: @videoformat }
      else
        format.html { render :edit }
        format.json { render json: @videoformat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videoformats/1
  # DELETE /videoformats/1.json
  def destroy
    @videoformat.destroy
    respond_to do |format|
      format.html { redirect_to videoformats_url, notice: 'Videoformat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videoformat
      @videoformat = Videoformat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videoformat_params
      params.require(:videoformat).permit(:name)
    end
end
