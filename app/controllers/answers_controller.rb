class AnswersController < ApplicationController

    def create 
        question_var = Question.find(params[:answer][:question_id])
        question_var.answers.create(answer_params)
        redirect_to question_var
    end

    private 
    def answer_params
        params.require(:answer).permit(:email, :body)
    end
end
