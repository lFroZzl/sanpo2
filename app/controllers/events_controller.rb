class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:title, :min_age, :max_age, :note, :start_date, :end_date, :participant)
    end

end
