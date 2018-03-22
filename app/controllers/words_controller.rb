class WordsController < ApplicationController

  before_action :authorize

  def index
    @words = @current_user.words
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.user_id = @current_user.id

    if @word.save
      redirect_to words_path
    else
      render 'new'
    end
  end

  def edit
    @word = @current_user.words.find(params[:id])
  end

  def update
    @word = @current_user.word.find(params[:id])

    if @word.update(word_params)
      redirect_to words_path
    else
      render 'edit'
    end
  end

  def destroy
    @word = @current_user.words.find(params[:id])
    @word.destroy

    redirect_to words_path
  end

  private def word_params
    params.require(:word).permit(:ru, :en)
  end
end
