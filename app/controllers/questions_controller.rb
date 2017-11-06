class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @coach_response = coach_answer_enhanced(@question)
  end

  private

  def coach_answer_enhanced(your_message)
    if your_message == "I'm gonna work!"
      return "Ok great!"
    elsif your_message == your_message.upcase
      return "I can feel your motivation! " + coach_answer(your_message)
    else
      coach_answer(your_message)
    end
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  end

  def coach_answer(your_message)
    if your_message == "I'm gonna work!"
      return "Ok great!"
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
    # TODO: return coach answer to your_message
  end
end
