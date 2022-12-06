def snippet(string)
  return string if string.split.length <= 5
  
  "#{string.split.first(5).join(' ')} ..."
end
