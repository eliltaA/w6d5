class Cat < ApplicationRecord
    cat_color = ['white', 'black', 'brown']
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion:{in:cat_color}
    validates :sex, inclusion:{in:['M', 'F']}
    validate :birth_date_cannot_be_future
# validates color, inclusion: cat_color

    def birth_date_cannot_be_future
       if birth_date > Date.today
        errors.add(:birth_date, "can't be in the past")
      end
    end
end
