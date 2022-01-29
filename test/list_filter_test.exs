defmodule ListFilterTest do
  use ExUnit.Case

  test "should return the amount of odd numbers in the list" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    response = ListFilter.call(list)

    expected_response = 3

    assert response === expected_response
  end

  test "should return 0 when passing an empty list" do
    list = []

    response = ListFilter.call(list)

    expected_response = 0

    assert response === expected_response
  end

  test "should return 0 when passing an list without any number" do
    list = ["a", "b", "c", "d"]

    response = ListFilter.call(list)

    expected_response = 0

    assert response === expected_response
  end
end
