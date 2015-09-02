post '/users/calculate' do
    current_user

    @calculation = Calculation.new(
    drinks: params[:drinks],
    weight: params[:weight],
    time: params[:time],
    gender: params[:gender])
  if @calculation.valid?
    @blood_alcohol_content = @calculation.bac(@calculation.gender, @calculation.drinks.to_f, @calculation.weight.to_f, @calculation.time.to_f)
    erb :'calculate/calculate'
  else
    @errors = @calculation.errors.messages
    erb :'users/index'
  end
end
