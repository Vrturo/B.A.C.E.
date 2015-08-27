get '/users/calculate' do
  erb :"/users/calculate"
end

post '/users/calculate' do
    @calculation = Calculation.new(
    drinks: params[:drinks].to_f,
    weight: params[:weight].to_f,
    time: params[:time].to_f,
    gender: params[:gender])
  if @calculation.valid?
    @blood_alcohol_content = @calculation.bac
    erb :'/users/calculate'
  else
    erb :'/'
  end
end
