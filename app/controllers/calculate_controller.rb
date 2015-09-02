post '/users/calculate' do

  #unauthorized 2.0 credentials
    HEADER = {"Authorization" => "Bearer #{current_user.token}"}





    p requests = HTTParty.post("https://sandbox-api.uber.com/v1/sandbox/requests/852b8fdd-4369-4659-9628-e122662ad257",
        data:{
          scope: "request",
          product_id: "a1111c8c-c720-46c3-8534-2fcdd730040d",
          start_latitude: 37.777451,
          start_longitude: 122.407577,
          end_latitude: 37.784765,
          end_longitude: 122.397524
          }
        )



     # p map = HTTParty.get("https://sandbox-api.uber.com/v1/requests/852b8fdd-4369-4659-9628-e122662ad257/map",
     #  headers: HEADER,
     #  data: {scope: "request"})


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
