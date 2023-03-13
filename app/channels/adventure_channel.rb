class AdventureChannel < ApplicationCable::Channel
  def subscribed
    stream_for Adventure.find(params[:id])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
