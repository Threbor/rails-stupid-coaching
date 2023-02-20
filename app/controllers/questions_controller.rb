class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:formulaire]

    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    if @user_input == 'I am going to work'
      @robot_answer = 'Great!'
    elsif @user_input.include?('?')
      @robot_answer = 'Silly question, get dressed and go to work!'
    else
      @robot_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
