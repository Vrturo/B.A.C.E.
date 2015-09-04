class FillerImage
  IMAGES = [
    {url: 'http://quotlr.com/images/quotes/4bb8b6be462911e39a1922000a9d0dee_8.jpg', caption: 'TRUST ME.'},
    {url: 'https://img0.etsystatic.com/045/0/10524898/il_fullxfull.714666944_sk3h.jpg', caption: 'two'},
    {url: 'http://m.memegen.com/0r5nyd.jpg', caption: 'Remember to keep it calssy!'},
    {url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmJznz9WoAchWnJwmKxyt_UGWFEYZPKgDxA14JkM2sMLsl_YdHxw', caption: 'four'},
    {url: 'hello', caption: 'five'}
  ]

  DEFAULT = {
    url: 'hello',
    caption: 'default'
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
