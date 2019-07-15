class CrawlerJob < ApplicationJob
  queue_as :default

  def perform(url,id)
    url_title = CrawlerService.new(url).get_title
    new_url = Url.find(id)
    new_url.update(title: url_title)
    p "sidekiq response" + new_url.to_s
  end
end
