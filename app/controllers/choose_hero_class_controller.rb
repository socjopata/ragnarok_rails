class ChooseHeroClassController < ApplicationController
  def show
    @form = CharacterClassAndBasicInfoForm.new(Hero.new, params[:initial_choices])
  end

  def create
    @form = CharacterClassAndBasicInfoForm.new(Hero.new, params[:initial_choices])
    if @form.save
      redirect_to :next_step #TODO
    else
      #TODO redirect to show, ensuring that the form wil lbe reinitialized with user input data, with errors highlighted
    end
  end
end
