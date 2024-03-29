class Diary
  def initialize
    @entries = []
    @contents = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry #Returns nothing
  end

  def all
    @entries
  end

  def count_words
   wordcount = 0
   @entries.each do |entry|
    wordcount += entry.count_words
   end
   wordcount
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    time = 0
    @entries.each do |entry|
      time += entry.reading_time(wpm)
    end
    return "It will take #{time} minute(s) to read this"
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end