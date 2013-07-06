# ESXi HostSummaryParser

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'host_summary_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install host_summary_parser

## Usage
```ruby
require 'host_summary_parser'

# get hostsummary by ssh login to ESXi host
hostsummary_string = %x(ssh esxihost vim-cmd hostsvc/hostsummary)
# parse hostsummary
hostsummary = HostSummaryParser.parse(hostsummary_string)
# output storage status info
p hostsummary[:runtime][:healthSystemRuntime][:hardwareStatusInfo][:storageStatusInfo]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
