class VirtuesController < ApplicationController
  def index
    character_class = CharacterClass.includes(:virtues).find(params[:character_class_id])
    render json: character_class.virtues.map { |virtue| { id: virtue.id, name: virtue.name }}
  end
end
