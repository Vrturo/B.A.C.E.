post '/users/calculate' do

    HEADER = {"Authorization" => "Bearer #{session[:access_token]}"}

     p requests = HTTParty.put("https://sandbox-api.uber.com/v1/sandbox/products/a1111c8c-c720-46c3-8534-2fcdd730040d",
        headers: HEADER,
          scope: "request",
          data:{
            "surge_multiplier" => 2.2,
            "drivers_available" => true})

    @calculation = Calculation.new(
    drinks: params[:drinks],
    weight: params[:weight],
    time: params[:time],
    gender: params[:gender])


  if @calculation.valid?
    @image = FillerImage.random

    @blood_alcohol_content = @calculation.bac(@calculation.gender, @calculation.drinks.to_f, @calculation.weight.to_f, @calculation.time.to_f)
    erb :'calculate/calculate'
  else
    @errors = @calculation.errors.messages
    erb :'users/index'
  end
end

get '/users/calculate/map' do

  if request.xhr?
    erb :_map, {layout: false}
  else
    erb :_map
  end
end
