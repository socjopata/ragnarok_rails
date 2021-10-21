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
      #TODO redirect to show, ensuring that the form wil lbe reinitialized with user input data, with errors highlighted
    end
  end

  def destroy
   @hero = current_user.current_hero
   @hero.destroy
   respond_to do |format|
     format.html { redirect_to root_url, notice: "Hero was successfully destroyed." }
   end
  end

  private

  def current_hero
    current_user.current_hero || Hero.new
  end
end
