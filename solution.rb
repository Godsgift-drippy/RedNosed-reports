# This function checks if a single report is safe
def is_safe_report(levels)
  differences = []

  # Step 1: Calculate differences between each pair of numbers
  (0...levels.length - 1).each do |i|
    diff = levels[i + 1] - levels[i]
    differences << diff
  end

  # Step 2: Check if all differences are valid for increasing (1 to 3)
  is_increasing = true
  differences.each do |d|
    if d < 1 || d > 3
      is_increasing = false
      break
    end
  end

  # Step 3: Check if all differences are valid for decreasing (-1 to -3)
  is_decreasing = true
  differences.each do |d|
    if d > -1 || d < -3
      is_decreasing = false
      break
    end
  end

  # Step 4: Report is safe if it is either increasing or decreasing
  return is_increasing || is_decreasing
end


# This function counts how many reports are safe
def count_safe_reports(text)
  lines = text.strip.split("\n")
  safe_count = 0

  # Loop through each line (each report)
  lines.each do |line|
    next if line.strip == ""  # skip empty lines

    # Convert string numbers into integers
    numbers = line.split(" ").map { |n| n.to_i }

    # Check if the report is safe
    if is_safe_report(numbers)
      safe_count += 1
    end
  end

  return safe_count
end


# Read input from file
data = File.read("input.txt")

# Get result
result = count_safe_reports(data)

# Print result
puts "Safe reports: #{result}"
