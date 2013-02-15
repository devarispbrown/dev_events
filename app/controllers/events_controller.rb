class EventsController < ApplicationController
  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end

  def create
    event = Event.new(params[:event])

    event.save
    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.update_attributes(params[:event])

    render json: event
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: user, status: 204
    else
      render json: user
    end
  end
end