# Welcome to Sonic Pi v2.4
#live_loop :doremifa do
#  sample :loop_amen, rate: 2
loop do
  use_synth :fm
    play :C
    sleep 0.25
    play :E
    sleep 0.25
    play :G
    sleep 0.25
end

