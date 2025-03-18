defmodule TileCalculator do
  def calculate(wall_width, tile_width, offset \\ 0) do
    num_full_tiles = div(wall_width, tile_width)
    remainder = rem(wall_width, tile_width)

    IO.puts("Full Tiles: #{num_full_tiles}")
    IO.puts("Remaining Space: #{remainder} inches")
    IO.puts("Offset: #{offset * tile_width} inches")

    {num_full_tiles, remainder}
  end
end

# Example Usage
wall_width = 48  # inches
tile_width = 6   # inches
offset = 1/3     # (third-tile stagger)

TileCalculator.calculate(wall_width, tile_width, offset)

