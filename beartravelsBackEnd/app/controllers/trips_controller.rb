class TripsController < ApplicationController

    get '/trips' do
        trips = Trip.all
        trips.to_json(include: [:days])
    end
    
    get '/trips/:id' do
        trip = Trip.find(params[:id])
        trip.to_json(include: [:days])
    end
    
    
    post "/trips" do
        new_trip = Trip.create({
            title: params[:title],
            startDate: params[:startDate],
            endDate: params[:endDate],
            destination: params[:destination],
            user_id: 1
            })
            
            startDate = Date.parse(params[:startDate])
            endDate = Date.parse(params[:endDate])
            days = endDate.mjd - startDate.mjd + 1
            x = 1
        while x <= days
            Day.create(trip_id: new_trip.id, day: x.to_s)
            x+= 1
        end
            theDays = Day.all.find_all{ |day| day.trip_id == new_trip.id }
            new_trip.to_json(include: [:days])
        end
    
    patch "/trips/:id" do
        trip = Trip.find(params[:id])
        tripDays = trip.days   
        trip.update({
            startDate: params[:startDate],
            endDate: params[:endDate]
        })
    
        startDate = Date.parse(params[:startDate])
        endDate = Date.parse(params[:endDate])
        days = endDate.mjd - startDate.mjd + 1
    
        added_days = days - tripDays.length
        removed_days = tripDays.length - days
    
        if tripDays.length < days
            x = 1
            while x <= added_days
                Day.create(trip_id: trip.id, day: tripDays.length + x)
                x += 1
            end
        elsif tripDays.length > days
            arr = tripDays.to_a.pop(removed_days)
            day_ids = arr.each{ |day| day.destroy}
        end
            trip.to_json(include: [:days])
    end
    
    delete "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.days.destroy_all
        trip.destroy
        trip.to_json(include: [:days])
    end
    
        
end