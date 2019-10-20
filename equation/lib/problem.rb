def hello_world
  "Hello world"
end

def read_from_input
  STDIN.read.split("\n").drop(1).each_slice(2).with_index do |line_pair, index|

  puts solve(line_pair, index + 1)
  end
end

def xor(a, b)
  (a ^ b).to_s(2).to_i(2)
end

def xor_sum(k, array)
  sum = 0
  array.each do |number|
    sum += xor(k, number)
  end
  sum
end

def examine_universe(edge_value, array)
  max_xor = nil

  (0..100).to_a.each do |i|
    control_value = xor_sum(i, array)
    max_xor = i if control_value <= edge_value
  end

  return -1 if max_xor == nil
  max_xor
end

def solve(line_pair, case_number)
  edge_value = line_pair[0].split(' ')[1].to_i
  array = line_pair[1].split(' ').map {|n| n.to_i}
  q = examine_universe(edge_value, array)

  print_case_solution(case_number, q)
end

def print_case_solution(case_number, line_pair)
  "Case ##{case_number}: #{line_pair}"
end

read_from_input
