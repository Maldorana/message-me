class ChatroomController < ApplicationController

    def index
        @message = Message.new
        @messages = Message.last_messages
    end

end
