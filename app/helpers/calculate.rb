helpers do
  def bac(amount,weight,hours,gender = :male)
    ratio = gender == :male ? 0.73 : 0.66
    bac = ((amount * 5.14/weight * ratio) - 0.015 * hours).round(2)
    (bac > 0) ? bac : 0.0
  end
end
