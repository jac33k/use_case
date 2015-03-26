class EventsController < ApplicationController

  def create
    add_new_event.run(params).match do
      success do
        head :created
      end

      failure do |exception|
        render_error exception
      end
    end
  end

  private
  def add_new_event
    @add_new_event ||= Storage::Events::UseCases::AddNewEvent.new
  end
end
