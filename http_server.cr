require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello Crystal! The time is #{Time.local}."
end

address = server.bind_tcp 8080
puts "Listtening on http://#{address}"
server.listen
