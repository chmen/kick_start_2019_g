def hello_world
  "Hello world"
end

def print_case_solution(case_number, case_data)
  "Case ##{case_number}: #{case_data}"
end

def solve(case_data, index)
  puts print_case_solution(index, case_data)
end

def read_from_input
  stdin_array = []
  STDIN.read.split("\n").drop(1).each.with_index do |line_pair, index|
    stdin_array << line_pair
  end
  index = 0
  until stdin_array.empty? do
    case_size = stdin_array[0].split(' ')[0].to_i
    case_data = stdin_array.slice!(0..case_size)
    index += 1

    solve(case_data, index)
  end
end

# read_from_input
