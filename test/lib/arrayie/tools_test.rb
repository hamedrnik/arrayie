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

require_relative '../../test_helper'

class ToolsTest < MiniTest::Test
  def setup
    @arrayie_tools = Arrayie::Tools.new
  end

  def test_flat_an_array_of_integers
    input_array = [[1, 2, [3]], 4]
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, [1, 2, 3, 4]
    assert_equal input_array, [[1, 2, [3]], 4]
  end

  def test_flat_an_array_of_integers_twice
    input_array = [[1, 2, [3]], 4]
    @arrayie_tools.flatten(input_array)
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, [1, 2, 3, 4]
    assert_equal input_array, [[1, 2, [3]], 4]
  end

  def test_flat_an_array_of_strings
    input_array = ['a', ['b', ['c', []]], 'd']
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, %w[a b c d]
    assert_equal input_array, ['a', ['b', ['c', []]], 'd']
  end

  def test_flat_an_empty_array
    input_array = []
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, []
    assert_equal input_array, []
  end

  def test_flat_nested_empty_array
    input_array = [[], [[]], []]
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, []
    assert_equal input_array, [[], [[]], []]
  end

  def test_flat_an_array_with_nil
    input_array = [[1, 2], nil, [[1], nil], ['string', nil, []]]
    flattened_array = @arrayie_tools.flatten(input_array)
    assert_equal flattened_array, [1, 2, nil, 1, nil, 'string', nil]
    assert_equal input_array, [[1, 2], nil, [[1], nil], ['string', nil, []]]
  end

  def test_flat_non_array
    input_array = 'This is wrong!'
    assert_raises ArgumentError do
      @arrayie_tools.flatten(input_array)
    end
  end
end
