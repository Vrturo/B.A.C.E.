  HEADER = {
    'User-Agent' => "Awesome-Octocat-App",
    "Authorization" => "token #{ENV['UBER_CLIENT_ID']}"
  }

get '/uberoauth' do

#   p @uberoauth = HTTParty.get('https://login.uber.com/oauth/token/?client_secret=EfTCPMFKjADsFW6kZl8HO8TUkex9f-M8P80nFkCH&&client_id=9z6pxBTjyMZZHtdIOndfCfN1pnl_v8q7&&grant_type=lV382byBIhYGMz6SznxFDf_h7cc9eLFdZI1DbpDp&&redirect_uri=http://localhost:9393/uberoauth&&code=lV382byBIhYGMz6SznxFDf_h7cc9eLFdZI1DbpDp')

# uber_api = OAuth2Service(
#      client_id=UBER_CLIENT_ID,
#      client_secret=UBER_CLIENT_SECRET,
#      name='B.A.C.E.',
#      authorize_url='https://login.uber.com/oauth/authorize',
#      access_token_url='https://login.uber.com/oauth/token',
#      base_url='https://api.uber.com/v1/',
#  )

  client = Uber::Client.new do |config|
    config.server_token =  ENV['UBER_SERVER_TOKEN']
    config.client_id     = ENV['UBER_CLIENT_ID']
    config.client_secret = ENV['UBER_CLIENT_SECRET']
    config.bearer_token  = params[:code]
  end
p client.bearer_token.access_token

# parameters = {
#     'response_type': 'code',
#     'redirect_uri': 'INSERT_ROUTE_TO_STEP_TWO',
#     'scope': 'profile',
# }

end



# curl -F 'client_secret=#{ENV['UBER_CLIENT_SECRET']}' \
#     -F 'client_id=#{ENV['UBER_CLIENT_ID']}' \
#     -F 'grant_type=#{ENV['UBER_SERVER_TOKEN']}' \
#     -F 'redirect_uri=http://localhost:9393/uberoauth' \
#     -F 'code=#{ENV['UBER_SERVER_TOKEN']}' \
#     https://login.uber.com/oauth/token


'client_secret=EfTCPMFKjADsFW6kZl8HO8TUkex9f-M8P80nFkCH&&client_id=9z6pxBTjyMZZHtdIOndfCfN1pnl_v8q7&&grant_type=lV382byBIhYGMz6SznxFDf_h7cc9eLFdZI1DbpDp&&redirect_uri=http://localhost:9393/uberoauth&&code=lV382byBIhYGMz6SznxFDf_h7cc9eLFdZI1DbpDp'
