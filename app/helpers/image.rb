helpers do
  def random_image
    array = ["http://quotlr.com/images/quotes/4bb8b6be462911e39a1922000a9d0dee_8.jpg",
            "https://img0.etsystatic.com/045/0/10524898/il_fullxfull.714666944_sk3h.jpg",
               "http://m.memegen.com/0r5nyd.jpg" ]
      rndm_num = Random.new
      array[rndm_num.rand(2)]
  end
end
