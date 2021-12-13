class TodosController < ApplicationController

    get '/todos' do
        todos = Todo.all
        todos.to_json
    end

    get '/todos/:id' do
        todos = Day.find(params[:id]).todos
        todos.to_json
    end

    post '/todos' do
        todo = Todo.create({
            place: params[:place],
            day_id: params[:day_id],
            longitude: params[:longitude],
            latitude: params[:latitude],
            open_now: params[:open_now],
            rating: params[:rating],
            photo: params[:photo],
            address: params[:address]
        })
        todo.to_jsonœ
    end

    delete '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.destroy
    end

end