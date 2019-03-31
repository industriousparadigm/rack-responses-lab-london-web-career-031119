class Application
  def call(env)
    resp = Rack::Response.new

    t = Time.now

    greeting = "Morning"
    greeting = "Afternoon" if t.hour >= 12
    
    resp.write greeting

    resp.finish
  end
end
  