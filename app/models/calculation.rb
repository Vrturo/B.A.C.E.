class Calculation
  include ActiveModel::Model

  attr_accessor :drinks, :weight, :time, :gender

  validates :drinks, :weight, :time, :gender, presence: true

    def bac
    ratio = self.gender == :male ? 0.73 : 0.66
    bac = ((self.drinks * 5.14/self.weight * ratio ) - 0.015 * self.time).round(2)
    (bac > 0) ? bac : 0.0
  end
end

