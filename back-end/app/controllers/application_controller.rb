class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    puts "This is process #{Process.pid}"
        
    get '/tasks' do        
        tasks = Task.all         
        tasks.to_json
    end

    get 'tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.to_json
    end

    post '/tasks' do
        tasks = Task.create(
            name:params[:name],
            details:params[:details],
            category:params[:category],
            user_id:params[:user_id]
        )
        tasks.to_json
    end

    patch '/tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.update(
            name:params[:name],
            details:params[:details],
            category:params[:category],
            user_id:params[:user_id]
    )
    tasks.to_json
    end
    

    delete '/tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.destroy
        tasks.to_json
    end
end

# This controller will be the "entry point" to our Sinatra 
# app. All other controllers will inherit from ApplicationController

