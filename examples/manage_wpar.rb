require 'wpars'

wpar = WPAR::WPAR.new(command: "ssh adxlpar2", name: "testwpar")
wpar.general.hostname="testwpar"
wpar.general.auto="yes"
#puts wpar.inspect

#wpar.create
#wpar.stop(force: true)
#wpar.start
#wpar.update
wpar.destroy(force: true)
#puts wpar.general.inspect
