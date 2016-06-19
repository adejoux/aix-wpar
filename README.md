AX WPAR ruby library

## description

This library allows to manage AIX wpars like ruby objects. Most standard operations are supported.

## Installation

Standard isntallation with internet access:
  gem install aix-wpar

Local installation:
  gem install --local aix-wpar-0.1.0.gem

## Usage

~~~ruby
require 'wpars'

#new wpar named testwpar
wpar = WPAR::WPAR.new(command: "ssh adxlpar2", name: "testwpar2")
#live stream output
wpar.live_stream=true

#set hostname if different
wpar.general.hostname="testwpar2"

#set auto start
wpar.general.auto="yes"

#create wpar
wpar.create

#stop wpar
wpar.stop(force: true)

#start wpar
wpar.start
#wpar.update
wpar.sync

#delete
wpar.destroy(force: true)
~~~

**live_stream** allows to display the system commands output.


## <a name="authors"></a> Authors

Created and maintained by [Alain Dejoux][author] (<adejoux@djouxtech.net>)

## <a name="license"></a> License

Apache 2.0 (see [LICENSE][license])


[author]:           https://github.com/adejoux
[issues]:           https://github.com/adejoux/aix-wpar/issues
[license]:          https://github.com/adejoux/aix-wpar/blob/master/LICENSE
[repo]:             https://github.com/adejoux/aix-wpar
