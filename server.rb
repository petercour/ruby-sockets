# Single client server,
# https://ruby-lang.co
require 'socket'                 # Get sockets from stdlib

server = TCPServer.open(2000)    # Socket to listen on port 2000
loop {                           # Servers run forever
   client = server.accept        # Wait for a client to connect
   client.puts(Time.now.ctime)   # Send the time to the client
   client.puts "See you later aligator!"
   client.close                  # Disconnect from the client
}
