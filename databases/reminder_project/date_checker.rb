
# checks for : spaces (removes)
# dash (asks to re-enter)
# text/ zeros (asks to re-enter)
# valid month (asks to re-enter)
# valid day in that month (asks to re-enter)
def date_checker(date)
  months_30 = [4,6,9,11]
  months_28 = [2]
  months_31 = [1,3,5,7,8,10,12]
  error = false
  date_array = date.chars
  date_array.delete(" ")
  if !date_array.include?"-"
    error = true
  else
  new_date = date_array.join
  new_date= new_date.split("-")
    if new_date[0].to_i == 0 || new_date[1].to_i == 0
      error = true
    elsif new_date[0].to_i > 12
      error = true
    elsif months_30.include?new_date[0].to_i
      if new_date[1].to_i > 30
        error = true
      end
    elsif months_28.include?new_date[0].to_i
      if new_date[1].to_i > 28
        error = true
      end
    elsif months_31.include?new_date[0].to_i
      if new_date[1].to_i > 31
        error = true
      end
    end 
  end
  if error == true
    puts "Date not valid. Please re-enter date (month-day):"
    date_checker(gets.chomp)
  else
    new_date.join('-')
  end
end