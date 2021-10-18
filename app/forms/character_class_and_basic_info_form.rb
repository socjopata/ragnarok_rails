class CharacterClassAndBasicInfoForm < Patterns::Form
  attribute :name, String

  private

  def persist
    resource.name = name
    #TODO actually I would like to recieve more attributes, like character class + chocies concerned "Zalety" section!
    # and maybe assign some of the in one go?
    resource.save
  end
end
