def hello_world
  "Hello world"
end

def read_from_input
  STDIN.read.split("\n").drop(1).each_slice(3).with_index do |line_pair, index|

  puts solve(line_pair, index + 1)
  end
end

def reader_pages(steps, total_pages)
  planned_pages = []
  all_pages = (1..total_pages).to_a

  steps.each do |step|
    planned_pages << all_pages.select {|number| number%step==0}
  end
  planned_pages.flatten
end



def solve(lines, case_number)
  total_pages = lines[0].split(' ')[0].to_i
  steps = lines[2].split.map{|n| n.to_i}
  missed_pages = lines[1].split(' ').map{|n| n.to_i}

  readed_pages = reader_pages(steps, total_pages) - missed_pages

  print_case_solution(case_number, readed_pages.count)
end

def print_case_solution(case_number, line_pair)
  "Case ##{case_number}: #{line_pair}"
end

read_from_input
