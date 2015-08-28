class Delicious
  include HTTParty
  base_uri 'https://api.del.icio.us/v1'

  def initialize(u, p)
    @auth = {username: u, password: p}
  end

  def posts(options = {})
    options.merge!({basic_auth: @auth})
    self.class.get('/posts/get', options)
  end

  def recent(options = {})
    options.merge!({basic_auth: @auth})
    self.class.get('/posts/recent', options)
  end
end

delicious = Delicious.new(config['username'], config['password'])
pp delicious.posts(query: {tag: 'ruby'})
pp delicious.recent

delicious.recent['posts']['post'].each { |post| puts post['href'] }
