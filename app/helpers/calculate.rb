helpers do
  def bac(amount,weight,hours,gender = :male)
    ratio = gender == :male ? 0.73 : 0.66
    bac = ((amount.to_f * 5.14/weight.to_f * ratio.to_f) - 0.015 * hours).round(2)
    (bac > 0) ? bac : 0.0
  end
end
