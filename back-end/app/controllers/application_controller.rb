class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    puts "This is process #{Process.pid}"        
    
end

# This controller will be the "entry point" to our Sinatra 
# app. All other controllers will inherit from ApplicationController

