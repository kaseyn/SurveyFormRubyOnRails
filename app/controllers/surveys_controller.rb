class SurveysController < ApplicationController
  def index
  	session[:views] ||= 0
  end

  def process_survey
  	session[:views] = session[:views] + 1
  	session[:result] = params[:survey]
  	flash[:success] = "Thanks for submitting this form! You have now submitted this form #{session[:views]} time(s)."
  	redirect_to '/surveys/result'
  end

  def result
  	@result = session[:result]
  end
end
