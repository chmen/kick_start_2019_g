def hello_world
  "Hello world"
end

def read_from_input
  STDIN.read.split("\n").drop(1).each_slice(2).with_index do |line_pair, index|

  puts solve(line_pair, index + 1)
  end
end

def solve(line_pair, case_number)
  print_case_solution(case_number, line_pair)
end

def print_case_solution(case_number, line_pair)
  "Case ##{case_number}: #{line_pair}"
end

# read_from_input
