

class UrlsController < ApplicationController

  def top100
    content_type 'application/json'
    Url.order(visits: :desc)[0..99].to_json
  end

  def url

    url = Url.find_by(url: params[:url])

    if url
      render json: url.encoded_url
    else
      url = Url.new(url: params[:url], encoded_url: ((Url.last&.id||0)+1).to_s(36))
      url.save
      CrawlerJob.perform_later(url.url, url.id)
      url.errors.messages.any? ? url.errors.messages : url.encoded_url.to_json
    end

  end

  def show
    encoded_url = params[:encoded_url]
    url = Url.find(encoded_url.to_i(36))
  rescue ActiveRecord::RecordNotFound
    return
    url.update(visits: url.visits + 1)
    redirect url.url
  end
end