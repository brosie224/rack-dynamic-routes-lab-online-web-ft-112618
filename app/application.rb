class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

       = req.path.split("/songs/").last
      song = @@songs.find{|s| s.title == song_title}

      resp.write song.artist
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
