class PagesController < ApplicationController
  def answer
    @question = params[:question]
    @answer = generate_answer # Implement a method to generate the coach's answer
  end

  private

  def generate_answer
    question = params[:question]

    if question == 'I am going to work'
      @generate_answer = 'Great!'
    elsif question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
