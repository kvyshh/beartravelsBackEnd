class DaysController < ApplicationController

    get "/days/:id" do
        days = Trip.find(params[:id]).days

        todos = days.map{ |day| day.todos }
        flat = todos.flatten

        first_day_id = days[0].id
        first_day_todos = flat.find_all{|todo| todo.day_id == first_day_id }
        days.to_json(include: [:todos])
    end
    
end