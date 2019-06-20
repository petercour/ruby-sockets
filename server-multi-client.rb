# Multi client server
# https://ruby-lang.co
require 'socket'                 # Get sockets from stdlib

server = TCPServer.open(2000)    # Listen on port 2000
loop {                           # Servers run forever
   Thread.start(server.accept) do |client|
   client.puts(Time.now.ctime)   # Send the time
   client.puts "Closing the connection. Bye!"
   client.close                  # Disconnect
   end
}
