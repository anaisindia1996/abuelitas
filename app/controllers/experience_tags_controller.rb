class ExperienceTagsController < ApplicationController

  def new
    @experience = Experience.find(params[:experience_id])
    @experience_tag = ExperienceTag.new
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @tags = Tag.where(id: params[:experience_tag][:tag])

    @tags.each do |tag|
      @experience_tag = ExperienceTag.new(experience: @experience, tag: tag)
      render 'experiences/new', status: :unprocessable_entity && return unless @experience_tag.save
    end
  end
end
