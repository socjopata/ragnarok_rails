class CharacterClassAndBasicInfoForm < Patterns::Form
  attribute :name, String
  attribute :character_class_id, Integer
  attribute :virtue_1_internal_id
  attribute :virtue_2_internal_id
  validates :name, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: I18n.t(:only_letters) }

  private

  def persist
    resource.name = name
    resource.user_id = form_owner.id
    resource.work_in_progress = true
    resource.character_class_id = character_class_id
    resource.virtue_1_internal_id = virtue_1_internal_id
    resource.virtue_2_internal_id = virtue_2_internal_id

        #TODO actually I would like to recieve more attributes, like character class + chocies concerned "Zalety" section!
    # and maybe assign some of the in one go?
    resource.save
  end
end
