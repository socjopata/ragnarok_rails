class CharacterClassAndBasicInfoForm < Patterns::Form

  attribute :name, String
  attribute :character_class_id, Integer
  attribute :virtue_1_internal_id
  attribute :virtue_2_internal_id
  validates :name, length: { minimum: 3, message: I18n.t(:name_too_short) }, format: { with: /\A[a-zA-Z]+\z/, message: I18n.t(:only_letters) }
  validates :virtue_1_internal_id, numericality: { other_than: :virtue_2_internal_id, message: I18n.t(:different_virtues) }

  def select_values
    CharacterClass.all.map { |character_class| [character_class.name, character_class.id]}
  end

  def values_select(character_class)
    return [] unless !character_class.character_class_id.nil?
    CharacterClass.find_by(id: character_class.character_class_id).virtues.pluck(:name, :id)

  end

  def first_hero_virtue
    resource.virtues[0]&.id if present?
  end

  def second_hero_virtue
    resource.virtues[1]&.id if present?
  end

  private

  def persist
    resource.name = name
    resource.user_id = form_owner.id
    resource.work_in_progress = true
    resource.character_class_id = character_class_id
        #TODO actually I would like to recieve more attributes, like character class + chocies concerned "Zalety" section!
    # and maybe assign some of the in one go?
    ActiveRecord::Base.transaction do
      resource.save!

      if resource.hero_virtues[0].present?
        resource.hero_virtues[0].update!(virtue_id: virtue_1_internal_id)
      else
        HeroVirtue.create!(hero_id: resource.id, virtue_id: virtue_1_internal_id)
      end

      if resource.hero_virtues[1].present?
        resource.hero_virtues[1].update!(virtue_id: virtue_2_internal_id)
      else
        HeroVirtue.create!(hero_id: resource.id, virtue_id: virtue_2_internal_id)
      end
    end
  rescue ActiveRecord::RecordInvalid => exception
    exception.message
  end
end
