require "./simple_kemal_app/*"
require "kemal" # (1)

get "/" do # (2)
  "My first Kemal app is alive!"
end

Kemal.run # (3)
