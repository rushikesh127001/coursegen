class Course::StepsController < ApplicationController
  include Wicked::Wizard
  steps :identity, :co, :po
  before_action :set_course, only: [:show, :update]
  
  def show
    @course = Course.find(params[:course_id])
    render_wizard
  end

  def update
    @course = Course.find(params[:course_id])
    @course.update(course_params(step))
    render_wizard @course
  end

  private
  def set_course
    @course = Course.find(params[:course_id])
    @course.form_step = step
  end

  def course_params(step)
  	permitted_attributes = case step
  	  when "identity"
  	    [:name, :email, :coursecode,:coursetitle,:semester,:section,:subjet,:modulecoordinator1,:modulecoordinator2]
  	  when "co"
  	    [:co1, :co2,:co3,:co3,co4,:co5]
  	  when "po"
  	  [:po1,:po2,:po3,:po4,:po5,:po6,:po6,:po7,:po8,:po9,:po10,:po11,:po12,:pso1,:pso2]
  	  end

  	params.require(:course).permit(permitted_attributes).merge(form_step: step)
  end

end
