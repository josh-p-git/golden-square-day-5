def snippet(string)
  return 'Please input a string!' if string.class != String

  return string if string.split.length <= 5

  "#{string.split.first(5).join(' ')} ..."
end
