class CrawlController < ApplicationController

  def index
    url = params[:url]
    document = Nokogiri::HTML(HTTParty.get(url))
    title = document.css("title").first.text
    image = document.css("image").first.attr("src") rescue nil
    paragraph = document.css("p").first.text rescue nil

    render json:{
      title: title,
      image: image,
      paragraph: paragraph
    }
  end
end
