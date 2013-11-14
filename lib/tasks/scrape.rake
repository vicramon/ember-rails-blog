namespace :ember do
  task scrape: :environment do

    def setup
      require 'capybara/poltergeist'
      require 'capybara/dsl'
      include Capybara::DSL
      Capybara.current_driver = :poltergeist
      Capybara.app_host = 'http://localhost:3000/'
      @query = '#!/about'
    end

    def get_page
      visit(@query)
      @document = Nokogiri::HTML.parse(source)
    end

    def save_page
      @document.css('script').remove
      file_path = "public/static/" + @query.gsub("#!",'')
      FileUtils.mkdir_p(File.dirname(file_path))

      File.open(file_path + ".html", "w+") do |f|
        f.write(@document.to_s)
      end
    end

    setup
    get_page
    save_page


    # how to input which things to crawl?
    # give it a list of starting points
    # it finds all the links that are inside your app
    # it follows those links
    # repeat above two steps
  end
end
