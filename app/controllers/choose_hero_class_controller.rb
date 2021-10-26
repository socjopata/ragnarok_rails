class ChooseHeroClassController < ApplicationController
   before_action :authenticate_user!
  def show
    @form = CharacterClassAndBasicInfoForm.new(current_hero, params[:initial_choices]).as(current_user)
  end

  def create
    @form = CharacterClassAndBasicInfoForm.new(current_hero, params[:initial_choices]).as(current_user)
    if @form.save
      redirect_to choose_hero_class_path #TODO
      # # :next_step_url
    else
      respond_to do |format|
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @form.errors, status: :unprocessable_entity }
        end
      end
    end

  def destroy
    if current_user.current_hero
     @hero = current_user.current_hero
     @hero.destroy
     respond_to do |format|
       format.html { redirect_to root_url, notice: t(:success_destroy) }
     end
    else
      redirect_to root_path
    end
  end

  private

  def current_hero
    current_user.current_hero || Hero.new
  end
end
