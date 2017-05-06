# Arrayie is a library which contains tools for working with Array in Ruby.
# Copyright (C) 2017 Hamed Ramezanian Nik
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

module Arrayie
  # This class contains tools for working with Array type
  class Tools
    # Flattens a Array type
    #
    # @param  [Array] input_array An array
    # @return [Array] flattened input array
    # @raise [ArgumentError] if the input array is not an Array type
    def flatten(input_array)
      unless input_array.is_a?(Array)
        raise ArgumentError, 'Accepted input should be an Array type.'
      end

      input_array.inject([]) do |output_array, item|
        output_array += item.is_a?(Array) ? flatten(item) : [item]

        output_array
      end
    end
  end
end
