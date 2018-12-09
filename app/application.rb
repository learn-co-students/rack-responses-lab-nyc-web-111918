class Application

  def call(env)
    resp = Rack::Response.new

    noon_time = Time.parse "12:00 pm"
    current_time = Time.now()

    if current_time < noon_time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
