namespace :ember do
  task scrape: :environment do
    EmberSeo.new.start_crawl
  end
end
