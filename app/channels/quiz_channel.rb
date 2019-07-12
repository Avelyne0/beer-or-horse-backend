class QuizChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'quiz_channel'
    # QuizChannel.send_something("hello")
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
    
  # end

  # def update_users_counter
  #   byebug
  #   ActionCable.server.broadcast(quiz_channel, message: ActionCable.server.connections)
  # end

  # private:
  # #Counts all users connected to the ActionCable server
  # # def count_unique_connections
  # #   connected_users = []
  # #   ActionCable.server.connections.each do |connection|
  # #     connected_users.push(connection.current_user.id)
  # #   end
  # #   return connected_users.uniq.length
  # # end

  # def self.send_something(message)
  #   ActionCable.server.broadcast('quiz_channel', history: message)
  # end 
end
