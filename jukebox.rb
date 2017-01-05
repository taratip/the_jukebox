class Playlist
  SONGS = [
    "Hello - Lionel Ritchie",
    "Kokomo - The Beach Boys",
    "Girl You Know It's True - Milli Vanilli",
    "Agadoo - Black Lace",
    "Down Under - Men at Work",
    "Nothing's Gonna Stop Us Now - Starship",
    "Get Outta My Dreams, Get Into My Car - Billy Ocean",
    "I Just Called to Say I Love You - Stevie Wonder",
    "Hangin' Tough - New Kids on the Block",
    "We Built This City - Starship",
    "Wake Me Up Before You Go Go - Wham!",
    "We Didn't Start The Fire - Billy Joel",
    "I Wanna Dance With Somebody - Whitney Houston",
    "U Can't Touch This - MC Hammer"
  ]

  attr_accessor :song_list

  def initialize(song_list)
    @song_list = []
    song_list.each do |song|
      add_track(song)
    end
  end

  def shuffle!
    @song_list = @song_list.shuffle
  end

  def play!
    @song_list[0]
    @song_list.delete_at(0)
  end

  def add_track(song)
    if SONGS.include?(song)
      @song_list << song
      true
    else
      false
    end
  end
end

list = [
  "Wake Me Up Before You Go Go - Wham!",
  "We Built This City - Starship",
  "U Can't Touch This - MC Hammer",
  "Girl You Know It's True - Milli Vanilli",
  "Nothing's Gonna Change My Love For You - George Benson",
  "Truly Madly Deeply - Savage Garden"
]

playlist = []
playlist = Playlist.new(list)
