# https://ruby-lang.co/
# gem 'net-ssh'
require 'rubygems'
require 'net/ssh'

@hostname = "localhost"
@username = "username"
@password = "password"
@cmd = "ls -al"

 begin
    ssh = Net::SSH.start(@hostname, @username, :password => @password)
    res = ssh.exec!(@cmd)
    ssh.close
    puts res
  rescue
    puts "Unable to connect to #{@hostname} using #{@username}/#{@password}"
  end
