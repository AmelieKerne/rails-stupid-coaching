class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I need an answer"
    elsif @question.include? "?"
      @answer = "Thank you for your question"
    else @answer = "Thank you for your input"
    end
  end

end
