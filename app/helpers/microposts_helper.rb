module MicropostsHelper
  
  def video?(url)
    !url.match(/http:\/\/www\.youtube\.com\/watch\?v=([a-z0-9]+).*/i).nil?
  end

  def video(url)
    url.match(/http:\/\/www\.youtube\.com\/watch\?v=([a-z0-9]+).*/i)
    video = $1
  end

  def add_like(post)
    @micropost = post
    @micropost.likes += 1
  end
end
