class Application

  def call(env)
    resp = Rack::Response.new
    # argument is year, month, day, hour, min
    if Time.now.hour >= 12
      ap = "PM"
      resp.write "Good Afternoon!"
    else
      ap = "AM"
      resp.write "Good Morning!"
    end
    resp.write "\n\n#{Time.now.hour}:#{Time.now.min} #{ap}"
    resp.finish
  end
end
