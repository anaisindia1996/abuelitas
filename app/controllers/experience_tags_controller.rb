class ExperienceTagsController < ApplicationController

  def new
    @experience = Experience.find(params[:experience_id])
    @experience_tag = ExperienceTag.new
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @tags = Tag.where(id: params[:experience_tag][:tag])
    end
  end
end
