class Calculation
  include ActiveModel::Model

  attr_accessor :drinks, :weight, :time, :gender

  validates :drinks, :weight, :time, :gender, presence: true

    def bac(gender, drinks, weight, time)
    ratio = gender == :male ? 0.73 : 0.66
    bac = ((drinks * 5.14/weight * ratio) - 0.015 * time).round(2)
    (bac > 0) ? bac : 0.0
  end
end

