helpers do
  #hours_drank = time * 0.015
  #volume = weight/2.2 * 0.58
  #bac = drinks/volume - hours_drank
  # def multiply(one, two)
  #   one * two
  # end

  # def divide(one, two)
  #   one/two
  # end

  #  def subtract(one, two)
  #   one - two
  # end

  # def male_algorithm(drinks, weight, time, gender)
  #   male_ratio = divide(weight.to_f, 2.2)
  #   volume = multiply(male_ratio.to_f, 0.58)
  #   bac = divide(drinks.to_f, volume.to_f)
  #   bac_dropped = multiply(time.to_f, 0.015)
  #   final_bac_integer = subtract(bac.to_f, bac_dropped.to_f)
  #   @blood_alcohol_content = final_bac_integer.to_f.round(2)
  # end

  def bac(amount,weight,hours,gender = :male)
    ratio = gender == :male ? 0.73 : 0.66
    bac = ((amount * 5.14/weight * ratio) - 0.015 * hours).round(2)
    (bac > 0) ? bac : 0.0
  end

  # def female_algorithm(drinks, weight, time, gender)
  #   female_ratio = divide(weight.to_f, 2.2)
  #   volume = multiply(female_ratio.to_f, 0.45)
  #   bac = divide(drinks.to_f, volume.to_f)
  #   bac_dropped = multiply(time.to_f, 0.015)
  #   final_bac_integer = subtract(bac.to_f, bac_dropped.to_f)
  #   @blood_alcohol_content = final_bac_integer.to_f.round(2)
  # end
end
