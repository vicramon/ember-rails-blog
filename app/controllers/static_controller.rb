class StaticController < ApplicationController

  def show
    file_name = request.params["_escaped_fragment_"]
    render file: "public/static/#{file_name}.html", layout: false
  end

end
