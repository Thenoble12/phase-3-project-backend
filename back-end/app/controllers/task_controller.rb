class TaskController < ApplicationController

    
    get '/tasks' do        
        tasks = Task.all         
        tasks.to_json
    end

    get '/tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.to_json
    end

    post '/tasks' do
        tasks = Task.create(
          params
        )
        tasks.to_json
    end

    patch '/tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.update(
          params
    )
    tasks.to_json
    end    

    delete '/tasks/:id' do
        tasks = Task.find(params[:id])
        tasks.destroy
        tasks.to_json
    end


end