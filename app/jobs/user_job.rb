class UserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "hiiiiiiiiiiiiiiiiiiiiiii"
  end


end
