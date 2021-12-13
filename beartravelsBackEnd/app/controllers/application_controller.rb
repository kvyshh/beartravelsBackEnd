class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Home" }.to_json
  end

end
