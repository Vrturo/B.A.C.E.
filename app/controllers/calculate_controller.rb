post '/users/calculate' do

  #unauthorized 2.0 credentials
    HEADER = {"Authorization" => "Bearer #{current_user.token}"}
    # HEADERR = {"Authorization" => "Bearer #{ENV['UBER_SERVER_TOKEN']}"}


    p requests = HTTParty.put("https://sandbox-api.uber.com/v1/sandbox/products/a1111c8c-c720-46c3-8534-2fcdd730040d",
          headers: HEADER,
          body: {
          "surge_multiplier" => 2.2,
          "drivers_available"=> true}
        #   scope: "request",
        #   product_id: "a1111c8c-c720-46c3-8534-2fcdd730040d",
        #   start_latitude: 37.777451,
        #   start_longitude: 122.407577,
        #   end_latitude: 37.784765,
        #   end_longitude: 122.397524
        #   }
        )

     # p map = HTTParty.get("https://sandbox-api.uber.com/v1/requests/852b8fdd-4369-4659-9628-e122662ad257/map",
     #  headers: HEADER,
     #  data: {scope: "request"})

p current_user.token

    # client = Uber::Client.new do |config|
    #   config.server_token  = {token: current_user.token}
    # end
    # p client.products(latitude: 37.7833, longitude: 122.4167)

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
# "bbb5c2d0-0425-46ba-a4be-9740b0833532"
