class QuestionsController < ApplicationController
  def ask
    @question = params[:controller]
  end

  def answer
    # @answer = params[:]
    @question = params[:question]
    @answer =
      if @question == "I'm going to work."
        "Great!"
      elsif @question.last == "?"
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
