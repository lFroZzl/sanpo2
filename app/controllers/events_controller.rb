class EventsController < ApplicationController

  before_action :authenticate_user!

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
    
  end

  def edit
  end

  def create
   @event = Event.new(event_params)
   @event.event_host = current_user
   respond_to do |format|
     if @event.save
       format.html { redirect_to @event, notice: 'Event was successfully created.' }
       format.json { render :show, status: :created, location: @event}
     else
       format.html { render :new }
       format.json { render json: @event.errors, status: :unprocessable_entity }
     end
   end
 end

 def update
   respond_to do |format|
     if @event.update(event_params)
       format.html { redirect_to @event, notice: 'Event was successfully updated.' }
       format.json { render :show, status: :ok, location: @event }
     else
       format.html { render :edit }
       format.json { render json: @event.errors, status: :unprocessable_entity }
     end
   end
 end

 def destroy
   @event.destroy
   respond_to do |format|
     format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
     format.json { head :no_content }
   end
 end



  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :min_age, :max_age, :note, :start_date, :end_date, :participant, :sport_id)
    end

end
