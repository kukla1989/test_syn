class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  # GET /words
  # GET /words.json
  def index
    if params[:query]
      @words = Word.where('name like :q', q: "%#{params[:query]}%").page(params[:page])
    else
      @words = Word.order(id: :desc).page(params[:page])
    end
  end

  # GET /words/1
  # GET /words/1.json
  def show

   end

  # GET /words/new
  def new
    @word = Word.new
  end

  # GET /words/1/edit
  def edit
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Word was successfully created.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to @word, notice: 'Word was successfully updated.' }
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to words_url, notice: 'Word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def rate
    @word = Word.find(params[:word_id])
    @word.update(total_rating: @word.total_rating + params[:rate].to_i, total_rates: @word.total_rates + 1)
    redirect_to :back, notice: 'Ваш рейтинг було враховано'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word

      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:name, :definition, :word_category_id)
    end
end
