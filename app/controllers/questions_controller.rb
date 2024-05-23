class QuestionsController < ApplicationController

  def ask
  end

  def answer
    responses = [
      'Great!',
      'Silly question, get dressed and go to work!',
      "I don't care, get dressed and go to work!"
    ]
    @response = if params[:question].include?('I am going to work')
                  responses[0]
                elsif params[:question].include?('?')
                  responses[1]
                else
                  responses[2]
                end
  end
end
