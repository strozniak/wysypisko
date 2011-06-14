module ApplicationHelper
  def title
    base_title = "Wysypisko"
    if @title.nil?
      base_title
    else
        "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end

  def dead_link_img
    image_tag("dead_link.jpg", :alt => "Dead Link", :class => "round")
  end

  def like_img
    image_tag("like.jpg", :alt => "Like it")
  end
end
