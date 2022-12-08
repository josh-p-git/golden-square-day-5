class MusicList
  def initialize
    @list = []
  end

  def addtrack(track)
    @list << track
  end

  def printtracks
    fail 'No tracks added!' if @list == []
    @list.join(', ')
  end
end
