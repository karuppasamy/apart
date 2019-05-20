class HeatingReadingJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default

  def perform(*args)
    puts "args.inspect #{args.inspect}"
    args.each do |data|
      reading = Reading.new(data)
      reading.save!
      puts "reading... created"
    end
  end
end
