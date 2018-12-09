class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    noon = Time.new(time.year, time.month, time.day, hour=12)

    if time < noon
      # puts "Good Morning"
      resp.write "Good Morning!"
    else
      # puts "Good Afternoon"
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
