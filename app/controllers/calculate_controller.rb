post '/users/calculate' do
    HEADER = {"Authorization" => "Bearer #{current_user.token}"}

    p response = HTTParty.get("https://sandbox-api.uber.com/v1/products",
      headers: HEADER)



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
