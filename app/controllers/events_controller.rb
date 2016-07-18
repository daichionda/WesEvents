class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def index
        # logic to pick the events based on what day or if all events was selected
		@events = Event.all
        if params[:show_all]
            @events
        else
            @result = []
            @events.each do |event|
                if event.startDay.strftime('%m/%d/%y') == params[:date]
                    @result.push(event)
                end
            end
            @events = @result
        end

        # passing params to create to be able to return to correct one
        if params[:show_all]
            @state = 'true'
        elsif params[:date] != nil
            @state = params[:date]
        else
            @state = ''
        end

        # variable to allow next day and previous day to be done and return to current month
        if params[:date] != nil
            @day = params[:date][3,2]
            @month = params[:date][0,2]
            @year = params[:date][6,2]
            @year = (2000 + @year.to_i).to_s
            @date = @year + "/" + @month + "/" + @day
            @date = @date.to_date
            @nextDay = (@date + 1).strftime('%m/%d/%y')
            @prevDay = (@date - 1).strftime('%m/%d/%y')
        end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def show
		@event = Event.find(params[:id])
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to @event
		else
			render 'new'
		end
	end

	def update
		@event = Event.find(params[:id])

		if @event.update(event_params)
			redirect_to @event
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy

		redirect_to events_path
	end

	private
		def event_params
			params.require(:event).permit(:eventName, :location, :startTime, :startDay, :endTime, :endDay, :description, :facebookLink)
		end
end
