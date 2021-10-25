class CharacterClassAndBasicInfoForm < Patterns::Form
  attribute :name, String
  validates :name, length: { minimum: 3}, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters allowed" }

  private

  def persist
    resource.name = name
    resource.user_id = form_owner.id
    resource.work_in_progress = true
    #TODO actually I would like to recieve more attributes, like character class + chocies concerned "Zalety" section!
    # and maybe assign some of the in one go?
    resource.save
  end
end
