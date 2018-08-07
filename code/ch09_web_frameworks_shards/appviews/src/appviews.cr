require "./appviews/*"
require "kemal"

get "/" do |env|
  title = "Home"
  page_message = "Your app's home page"
  render "src/views/home.ecr", "src/views/layouts/main_layout.ecr"
end

get "/about" do |env|
  title = "About"
  page_message = "Your app's description page"
  render "src/views/about.ecr", "src/views/layouts/main_layout.ecr"
end

get "/contact" do |env|
  title = "Contact"
  page_message = "Your app's contact page"
  render "src/views/contact.ecr", "src/views/layouts/main_layout.ecr"
end

Kemal.run
