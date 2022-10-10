class FlashcardListsController < ApplicationController
  before_action :set_flashcard_list, only: [:show, :update, :destroy]

  # GET /flashcard_lists
  def index
    @flashcard_lists = FlashcardList.all

    render json: @flashcard_lists
  end

  # GET /flashcard_lists/1
  def show
    render json: @flashcard_list
  end

  # POST /flashcard_lists
  def create
    @flashcard_list = FlashcardList.new(flashcard_list_params)
    
    if @flashcard_list.save
      render json: @flashcard_list, status: :created, location: @flashcard_list
    else
      render json: @flashcard_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flashcard_lists/1
  def update
    if @flashcard_list.update(flashcard_list_params)
      render json: @flashcard_list
    else
      render json: @flashcard_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flashcard_lists/1
  def destroy
    @flashcard_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashcard_list
      @flashcard_list = FlashcardList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flashcard_list_params
      params.require(:flashcard_list).permit(:name, :difficulty, :photo)
    end
end
