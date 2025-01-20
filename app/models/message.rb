class Message < ApplicationRecord
  after_create_commit :append_new_message

  private

  def append_new_message
    broadcast_append_to("messages",
      html: ApplicationController.render(
        MessageComponent.new(message: self),
        layout: false
      )
    )
  end
end
