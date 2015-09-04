class Calculation
  include ActiveModel::Model

  attr_accessor :drinks, :weight, :time, :gender

  validates :drinks, :weight, :time, :gender, presence: true

    def bac(gender, drinks, weight, time)
    ratio = gender == 'male' ? 0.73 : 0.66
    bac = ((drinks * 5.14/weight * ratio) - 0.015 * time).round(2)
    (bac > 0) ? bac : 0.0
  end
end

#% BAC = (D x 5.14/W x r) – .015 x H
# "D" is the total number of drinks of alcohol consumed
# by the person since the commencement of drinking.

# “W” is for weight of the person in pounds

# “r” in the alcohol distribution ratio which for men is .73 and for women is .66

# “H” is the period in hours during which alcohol was eliminated
# from the bloodstream and this is usually the total number of
# hours between commencement of drinking and the time the BAC
# calculation is made.
