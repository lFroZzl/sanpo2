class SportsController < ApplicationController

before_action :authenticate_user!

before_action :set_sport, only: [:show, :edit, :update, :destroy]

 def index
   @sports = Sport.all
 end

 def show
 end

 def new
   @sport = Sport.new
 end
 
 def edit
 end

 def create
   @sport = Sport.new(sport_params)
   respond_to do |format|
     if @sport.save
       format.html { redirect_to @sport, notice: 'Sport was successfully created.' }
       format.json { render :show, status: :created, location: @sport}
     else
       format.html { render :new }
       format.json { render json: @sport.errors, status: :unprocessable_entity }
     end
   end
 end

 def update
   respond_to do |format|
     if @sport.update(sport_params)
       format.html { redirect_to @sport, notice: 'Sport was successfully updated.' }
       format.json { render :show, status: :ok, location: @sport }
     else
       format.html { render :edit }
       format.json { render json: @sport.errors, status: :unprocessable_entity }
     end
   end
 end

 def destroy
   @sport.destroy
   respond_to do |format|
     format.html { redirect_to sports_url, notice: 'Sport was successfully destroyed.' }
     format.json { head :no_content }
   end
 end
 private

   def set_sport
     @sport = Sport.find(params[:id])
   end

   def sport_params
     params.require(:sport).permit(:name, :category)
   end

end