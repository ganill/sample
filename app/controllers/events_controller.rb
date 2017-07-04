class EventsController < ApplicationController
   load_and_authorize_resource #load_resource it loads current resource
   #authorize_resource calls the ability class

	def index
		#@events = Event.all //by default it loads everything
	end
  
  def new
  end

	def create
		if @event.save
			redirect_to events_path, notice:"your event details saved successfully completed..!"

		else
		  render :new ,notice:"wrong details entered ...!"
		end	
		
	end

	def edit
		
	end

  def show
  	@comment = @event.comments.build
  end

	def update

		if @event.update(event_params) 
      redirect_to @event, notice: "updated successfully"
			else
      render :edit
			end
		
	end

	def destroy 
		@event.destroy
		respond_to do |format|
		  format.js 
		end
		# if @event.destroy
  #    redirect_to events_path, notice: "event deleted successfully"
  #   else
  #   	redirect_to events_path, notice: "not deleted"
  #   end

	end

	private

	def event_params
		params.require(:event).permit(:name,:date,:address,:description)
	end

end
