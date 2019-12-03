class EventsController < ApplicationController
  before_action :current_user_must_be_event_username, :only => [:edit_form, :update_row, :destroy_row]

  def current_user_must_be_event_username
    event = Event.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_user == event.username
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @events = Event.all

    render("event_templates/index.html.erb")
  end

  def show
    @event = Event.find(params.fetch("id_to_display"))

    render("event_templates/show.html.erb")
  end

  def new_form
    @event = Event.new

    render("event_templates/new_form.html.erb")
  end

  def create_row
    @event = Event.new

    @event.user_id = params.fetch("user_id")
    @event.start_time = params.fetch("start_time")
    @event.description = params.fetch("description")
    @event.message_sent = params.fetch("message_sent")

    if @event.valid?
      @event.save

      redirect_back(:fallback_location => "/events", :notice => "Event created successfully.")
    else
      render("event_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @event = Event.find(params.fetch("prefill_with_id"))

    render("event_templates/edit_form.html.erb")
  end

  def update_row
    @event = Event.find(params.fetch("id_to_modify"))

    
    @event.start_time = params.fetch("start_time")
    @event.description = params.fetch("description")
    @event.message_sent = params.fetch("message_sent")

    if @event.valid?
      @event.save

      redirect_to("/events/#{@event.id}", :notice => "Event updated successfully.")
    else
      render("event_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_username
    @event = Event.find(params.fetch("id_to_remove"))

    @event.destroy

    redirect_to("/users/#{@event.user_id}", notice: "Event deleted successfully.")
  end

  def destroy_row
    @event = Event.find(params.fetch("id_to_remove"))

    @event.destroy

    redirect_to("/events", :notice => "Event deleted successfully.")
  end
end
