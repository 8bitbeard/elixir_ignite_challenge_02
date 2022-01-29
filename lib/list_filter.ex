defmodule ListFilter do
  require Integer

  def call([]), do: 0

  def call(list) do
    list
    |> Enum.map(fn elem -> Integer.parse(elem) end)
    |> Enum.map(fn elem -> transform_to_digit(elem) end)
    |> Enum.filter(fn elem -> Integer.is_odd(elem) end)
    |> sum()
  end

  defp transform_to_digit(elem) do
    case elem do
      {num, _} -> num
      :error -> 0
    end
  end

  defp sum(list) do
    case list do
      [] -> 0
      _ -> Enum.reduce(list, fn _x, acc -> acc + 1 end)
    end
  end
end
