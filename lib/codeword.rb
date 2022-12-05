def codeword(codeword)
  return "Correct! Come in." if codeword == "horse"
    
   codeword.chars.first == "h" && codeword.chars.last == "e"
    "Close, but nope."
  else
    "WRONG!"
  
end
