module CirclesHelper

  #引数で与えられたユーザのGravatar画像を返す
  def gravatar_for(circle,options ={size: 80})
    size = options[:size]
    gravatar_id = Digest::MD5::hexdigest(circle.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: circle.name, class: "gravatar")
  end

end
