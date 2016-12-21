module Webpacker
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def create_js_file
      template("config/development.js.tt", "config/webpack/development.js")
      template("config/production.js.tt", "config/webpack/production.js")
      template("config/shared.js.tt", "config/webpack/shared.js")
    end

  end
end
