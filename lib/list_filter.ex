defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.map(fn elem -> Integer.parse(elem) end)
    |> Enum.map(fn elem -> transform_to_digit(elem) end)
    |> Enum.filter(fn elem -> Integer.is_odd(elem) end)
    |> Enum.reduce(fn _x, acc -> acc + 1 end)
  end

  defp transform_to_digit(elem) do
    case elem do
      { num, _ } -> num
      :error -> 0
    end
  end
end
