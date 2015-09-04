class FillerImage
  IMAGES = [
    {url: 'http://quotlr.com/images/quotes/4bb8b6be462911e39a1922000a9d0dee_8.jpg', caption: 'TRUST ME.'},
    {url: 'http://www.trademarkia.com/logo-images/bg-wines-usa-llc/live-passionately-drink-responsibly-77001618.jpg', caption: 'Be safe.'},
    {url: 'http://www.pomgen.gov.pg/wp-content/uploads/2015/04/drink_responsibly-1024x576.jpg', caption: 'Have fun and be safe!'},
    {url: 'http://wanna-joke.com/wp-content/uploads/2015/03/happy-drunk-quote.jpg', caption: ''}
  ]

  DEFAULT = {
    url: 'http://quotlr.com/images/quotes/4bb8b6be462911e39a1922000a9d0dee_8.jpg',
    caption: 'TRUST ME.'
  }

  attr_reader :url, :caption

  def initialize(args)
    @url = args.fetch(:url, DEFAULT[:url])
    @caption = args.fetch(:caption, DEFAULT[:caption])
  end

  def self.random
    self.new(IMAGES.sample)
  end
end
