class Cat < ApplicationRecord
  
    CAT_COLOR = ['white', 'black', 'brown']
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion:{in:CAT_COLOR}
    validates :sex, inclusion:{in:['M', 'F']}
    validate :birth_date_cannot_be_future
# validates color, inclusion: cat_color

    def birth_date_cannot_be_future
       if birth_date.present? && birth_date > Date.today
        errors.add(:birth_date, "can't be in the future")
      end
    end
end
