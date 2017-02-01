# First Name, Last Name, Age, Income, Household Size, Gender, Education
# Jon, Smith, 25, 50000, 1, Male, College
# Jane, Davies, 30, 60000, 3, Female, High School
# Sam, Farelly, 32, 80000, 2, Unspecified, College
# Joan, Favreau, 35, 65000, 4, Female, College
# Sam, McNulty, 38, 63000, 3, Male, College
# Mark, Minahan, 48, 78000, 5, Male, High School
# Susan, Umani, 45, 75000, 2, Female, College
# Bill, Perault, 24, 45000, 1, Male, Did Not Complete High School
# Doug, Stamper, 45, 75000, 1, Male, College
# Francis, Underwood, 52, 100000, 2, Male, College
voter_demographics = []
10.times do
  voter_demographics << {first_name: "",
  last_name: "",
  age: 0,
  income: 0,
  household_size: 0,
  gender: "",
  education: ""}
end
voter_demographics[0][:first_name] = "Jon"
voter_demographics[1][:first_name] = "Jane"
voter_demographics[2][:first_name] = "Sam"
voter_demographics[3][:first_name] = "Joan"
voter_demographics[4][:first_name] = "Sam"
voter_demographics[5][:first_name] = "Mark"
voter_demographics[6][:first_name] = "Susan"
voter_demographics[7][:first_name] = "Bill"
voter_demographics[8][:first_name] = "Doug"
voter_demographics[9][:first_name] = "Francis"
voter_demographics[0][:last_name] = "Smith"
voter_demographics[1][:last_name] = "Davies"
voter_demographics[2][:last_name] = "Farelly"
voter_demographics[3][:last_name] = "Favreau"
voter_demographics[4][:last_name] = "McNulty"
voter_demographics[5][:last_name] = "Minahan"
voter_demographics[6][:last_name] = "Umani"
voter_demographics[7][:last_name] = "Perault"
voter_demographics[8][:last_name] = "Stamper"
voter_demographics[9][:last_name] = "Underwood"
voter_demographics[0][:age] = 25
voter_demographics[1][:age] = 30
voter_demographics[2][:age] = 32
voter_demographics[3][:age] = 35
voter_demographics[4][:age] = 38
voter_demographics[5][:age] = 48
voter_demographics[6][:age] = 45
voter_demographics[7][:age] = 24
voter_demographics[8][:age] = 45
voter_demographics[9][:age] = 52
voter_demographics[0][:income] = 50000
voter_demographics[1][:income] = 60000
voter_demographics[2][:income] = 80000
voter_demographics[3][:income] = 65000
voter_demographics[4][:income] = 63000
voter_demographics[5][:income] = 78000
voter_demographics[6][:income] = 75000
voter_demographics[7][:income] = 45000
voter_demographics[8][:income] = 75000
voter_demographics[9][:income] = 100000
voter_demographics[0][:household_size] = 1
voter_demographics[1][:household_size] = 3
voter_demographics[2][:household_size] = 2
voter_demographics[3][:household_size] = 4
voter_demographics[4][:household_size] = 3
voter_demographics[5][:household_size] = 5
voter_demographics[6][:household_size] = 2
voter_demographics[7][:household_size] = 1
voter_demographics[8][:household_size] = 1
voter_demographics[9][:household_size] = 2
voter_demographics[0][:gender] = :male
voter_demographics[1][:gender] = :female
voter_demographics[2][:gender] = :unspecified
voter_demographics[3][:gender] = :female
voter_demographics[4][:gender] = :male
voter_demographics[5][:gender] = :male
voter_demographics[6][:gender] = :female
voter_demographics[7][:gender] = :male
voter_demographics[8][:gender] = :male
voter_demographics[9][:gender] = :male
voter_demographics[0][:education] = :college
voter_demographics[1][:education] = :high_school
voter_demographics[2][:education] = :college
voter_demographics[3][:education] = :college
voter_demographics[4][:education] = :college
voter_demographics[5][:education] = :high_school
voter_demographics[6][:education] = :college
voter_demographics[7][:education] = :did_not_complete_high_school
voter_demographics[8][:education] = :college
voter_demographics[9][:education] = :college

# * Average age
ages = 0
voter_demographics.each do |hash|
  hash.each do |k, v|
  if k == :age
    ages += v
  end
  end
end
ave_age = ages / 10
puts "The average age is #{ave_age}."

# * Average income
income = 0
voter_demographics.each do |hash|
  hash.each do |k, v|
    if k == :income
      income += v
    end
  end
end
ave_income = income / 10
puts "The average income is $#{ave_income}."

# * Average household size
household_size = 0
voter_demographics.each do |hash|
  hash.each do |k, v|
    if k == :household_size
      household_size += v
    end
  end
end
ave_household_size = household_size / 10
puts "The average household size is #{ave_household_size}."

# * Female Percentage
fem_count = 0
voter_demographics.each do |hash|
  if hash[:gender] == :female
    fem_count += 1
  end
end
puts "#{fem_count}% are female."

# * Male Percentage
male_count = 0
voter_demographics.each do |hash|
  if hash[:gender] == :male
    male_count += 1
  end
end
puts "#{male_count}% are male."

# * Unspecified Gender Percentage
unspecified_gender_count = 0
voter_demographics.each do |hash|
  if hash[:gender] == :unspecified
    unspecified_gender_count += 1
  end
end
puts "#{unspecified_gender_count}% have unspecified genders."

# * Percent of those who obtained a college education level
college_count = 0
voter_demographics.each do |hash|
  if hash[:education] == :college
    college_count += 1
  end
end
puts "#{college_count}% have obtained a college education level."

# * Percent of those who obtained a high school education level
high_school_count = 0
voter_demographics.each do |hash|
  if hash[:education] == :high_school
    high_school_count += 1
  end
end
puts "#{high_school_count}% have obtained a high school education level."

# * Percent of those that did not finish high school
in_high_school = 0
voter_demographics.each do |hash|
  if hash[:education] == :did_not_complete_high_school
    in_high_school += 1
  end
end
puts "#{in_high_school}% have not yet completed high school."
