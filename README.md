# Arrayie

Arrayie is a library which contains tools for working with Array in Ruby. 

## Requirements
Ruby >= 2.4

## Installation

### RubyGems

Add this to the Gemfile:

    gem 'arrayie'

or install it directly:

    gem install arrayie

### Install from Git

Add the following in the Gemfile:

    gem 'arrayie', :git => 'https://github.com/iCEAGE/arrayie.git'


## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'arrayie'

array_utils = Arrayie::Tools.new

input_array = [[1, 2, [3]], 4]

flattened_array = array_utils.flatten(input_array)

puts flattened_array
```

## Tests
To run the tests:
````
bundle exec rake
````

## License

Copyright (C) 2017 Hamed Ramezanian Nik

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
