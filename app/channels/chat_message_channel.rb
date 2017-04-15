# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ChatMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_message_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ChatMessage.create! body: data['message']
  end
end
