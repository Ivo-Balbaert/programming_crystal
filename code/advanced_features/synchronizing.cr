# # Synchronization of channels:
# background worker signals on channel when it is done
# main fiber only continues when that signal is received
def worker(done : Channel(Bool))
  puts "worker: working"
  sleep 2
  puts "worker: done"
  done.send true
end

done = Channel(Bool).new
spawn worker(done)

done.receive # main blocks here
puts "main: next"

# =>
# worker: working
# worker: done
# main: next
