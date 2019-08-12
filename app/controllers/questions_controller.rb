class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if @questions.include? "?"
      @answer = "Silly question, get back to work!"
    elsif @questions == "I'm going to work"
      @answer = "Great!"
    else @answer = "I don't care, get dressed and go to work!"
    end
  end

  def show
    @answer = params[:question]
  end
end
