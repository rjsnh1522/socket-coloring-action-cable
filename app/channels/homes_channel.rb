class HomesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'coloring'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def self.broadcast(color,action)
  		ActionCable.server.broadcast 'coloring',create:HomesController.render(partial:'homes/color_grid',locals:{color:color})
  end
end
