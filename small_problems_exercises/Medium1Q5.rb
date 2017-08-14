def diamond(number)
  space = ' '
  star = '*'
  star_n = 1

  while star_n < number
    puts (space * ((number - star_n) /2)) + (star * star_n) +
    (space * ((number - star_n) / 2))
    star_n += 1
  end
  loop do
    star_n -= 1
    break if star_n == 0
    puts (space * ((number - star_n) / 2)) + (star * star_n) +
    (space * ((number - star_n) / 2))
  end
end

diamond(1)
diamond(3)
diamond(9)


def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
