# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GENRES = ["Rock", "Jazz", "Hip-Hop", "Pop", "Blues", "Folk", "Classic", "Heavy Metal", "Thrash Metal", "Country",
          "R&B", "Punk Rock", "Electronic", "Soul", "Reggae", "Funk", "Techno", "Disco", "Alternative Rock", "Ambient",
          "Swing", "Industrial", "Gospel", "Trance", "Instrumental", "Dubstep", "Breakbeat", "Ska", "Pop Rock", "Indie Rock",
          "Orchestra", "Psychedelic Music", "Electro", "New Wave", "Experimental", "World", "Grunge", "Drum & Bass", "Hardcore", "Baroque",
          "Bossa Nova", "Bluegrass", "Shoegaze", "Easy Listening", "Enka", "Holiday", "J-Pop", "Latin", "Power Metal", "New Age", "Opera"].freeze

AGE_RESTRICTIONS = [0, 6, 12, 16, 18].freeze

ROLES = %w[User Editor Admin]

TEST_USERS_COUNT = 30
TEST_ALBUMS_COUNT = 30

METALLICA = {
  KILL_EM_ALL: {
    NAME: "Kill 'em All",
    DESCRIPTION: "is the debut studio album by American heavy metal band Metallica, released on July 25, 1983, through the independent label Megaforce Records. Metallica began by playing shows in local clubs in Los Angeles. They recorded several demos to gain attention from club owners and eventually relocated to San Francisco to secure the services of bassist Cliff Burton.",
    IMAGE_PREVIEW_URL: "https://pbs.twimg.com/media/E7GS8xWWUAIyyKL.jpg",
    RELEASE_DATE: "25.07.1983",
    COUNTRIES: "US",
    MAIN_GENRE: "Thrash Metal",
    PERFORMER: "Metallica",
    AGE_RESTRICTIONS: "18+",
    TAGS: "Metallica, Thrash Metal",
    TRACKS: {
      HIT_THE_LIGHTS: {
        NAME: "Hit the Lights",
        DESCRIPTION: 'is the first Metallica song ever written, James Hetfield originally wrote the song with his old band Leather Charm, and later, when he formed Metallica with Lars Ulrich, the two worked on the song and arranged it into what eventually became the album version of the song. The song, rather than the darker lyrics of later Metallica songs, has a more positive edge to it. It is about life on the road and living "metal".',
        SOURCE_LINK: "https://www.youtube.com/watch?v=fwtJUR4t8io&ab_channel=Metallica-Topic",
        DURATION: "4:17",
      },
      THE_FOUR_HORSEMAN: {
        NAME: "The Four Horsemen",
        DESCRIPTION: "was originally written by Dave Mustaine in his former band Panic entitled \"The Mechanix\". The song was one of Metallica's staples during their clubbing days, albeit with no melodic interlude and different lyrics. The original lyrics were roughly about a sexual encounter at a gas station. James Hetfield has gone on to say the lyrics were \"silly\".",
        SOURCE_LINK: "https://www.youtube.com/watch?v=Wkvd7pbfM78&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=2&ab_channel=Metallica-Topic",
        DURATION: "7:13",
      },
      MOTORBREATH: {
        NAME: "Motorbreath",
        DESCRIPTION: "is about \"life in the fast lane\". James Hetfield wrote this song with his high school friend Hugh Tanner before Metallica was even formed, and is one of only two songs that Lars Ulrich doesn't receive a writing credit for. It is also the band's shortest song, clocking in at only three minutes and eight seconds.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=CWxJRnPNiuk&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=3&ab_channel=Metallica-Topic",
        DURATION: "3:08",
      },
      JUMP_IN_THE_FIRE: {
        NAME: "Jump in the Fire",
        DESCRIPTION: "was released as the second single from Kill 'Em All, and was accompanied by fake live performances of \"Phantom Lord\" and \"Seek & Destroy\", which were alternate studio recordings with sounds of a crowd overdubbed in. The original lyrics were penned by Dave Mustaine - the song was originally about sex until he left the band and James got his hands on the song, changing the lyrics to make it a song about hell. In the song a devil persuades someone to join him in hell.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=tRRA5KGaSi4&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=4&ab_channel=Metallica-Topic",
        DURATION: "4:42",
      },
      PULLING_TEETH: {
        NAME: "(Anesthesia) Pulling Teeth",
        DESCRIPTION: "is a bass solo written by late bassist Cliff Burton. It is the band's first instrumental track, being succeeded by \"The Call of Ktulu\", \"Orion\", \"To Live Is to Die\", and \"Suicide and Redemption\", all of which appearing on future albums.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=3i8-agWJqP0&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=5&ab_channel=Metallica-Topic",
        DURATION: "4:15",
      },
      WHIPLASH: {
        NAME: "Whiplash",
        DESCRIPTION: "is credited to James Hetfield and Lars Ulrich and was the sixth track and first single from their 1983 debut album Kill 'Em All. The song has been covered several times, most notably by Motörhead whose version won a Grammy Award for Best Metal Performance. After bassist Jason Newsted joined the band in 1986, Jason sang the second and third verse. In 1999 and 2000 he did the entire song twice when James Hetfield had a back injury. The song is about the feeling one experiences when headbanging. (\"...thrashing all around, acting like a maniac, whiplash!..\") The song is on the game Guitar Hero: Metallica.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=oN6TjsBeJsM&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=6&ab_channel=Metallica-Topic",
        DURATION: "4:09",
      },
      PHANTOM_LORD: {
        NAME: "Phantom Lord",
        DESCRIPTION: "was written by James Hetfield, Lars Ulrich, and Dave Mustaine. It is named after one of James Hetfield's older bands before the formation of Metallica.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=hYpvW3rhYJA&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=7&ab_channel=Metallica-Topic",
        DURATION: "5:02",
      },
      NO_REMORSE: {
        NAME: "No Remorse",
        DESCRIPTION: "is about how soldiers in a war are not meant to show any remorse while killing. An early version of the song appears on Ron McGovney's 1982 demo, and was often played live when Dave Mustaine was still in the band - in this version, however, the ending part has no vocals, and the lyrics for the chorus are slightly different. In 1993 a sample of the song's chorus was used in the famous game Doom, on the first level.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=2xR-3jyHGfc&ab_channel=Metallica-Topic",
        DURATION: "6:27",
      },
      SEEK_AND_DESTROY: {
        NAME: "Seek & Destroy",
        DESCRIPTION: "subject matter is feeling the urge to kill. From the lyrics, it can be determined that the violence is directed towards someone who deserves it--perhaps, in Metallica's eyes, LA-based glam metal bands. It is said to be heavily influenced by the Diamond Head song \"Dead Reckoning.\"",
        SOURCE_LINK: "https://www.youtube.com/watch?v=Wm58sGEdgAw&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=8&ab_channel=Metallica-Topic",
        DURATION: "6:56",
      },
      METAL_MILITIA: {
        NAME: "Metal Militia",
        DESCRIPTION: "serves as something of a call to arms to all diehards to spread the 'word of metal', thus becoming the metal militia. The tone of the song is similar to that conveyed later in the track \"Battery\", which describes the metal community and the idea of uniting around the common interest of thrash.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=sdGrxMKKHbo&list=PL6ogdCG3tAWiojLKseGLCgnT-oT2FlVUt&index=9&ab_channel=Metallica-Topic",
        DURATION: "5:11",
      },
    },
  },
  RIDE_THE_LIGHTNING: {
    NAME: "Ride the Lightning",
    DESCRIPTION: "is the second studio album by American heavy metal band Metallica, released on July 27, 1984, by the independent record label Megaforce Records. The album was recorded in three weeks with producer Flemming Rasmussen at Sweet Silence Studios in Copenhagen, Denmark. The artwork, based on a concept by the band, depicts an electric chair being struck by lightning flowing from the band logo. The title was taken from a passage in Stephen King's novel The Stand, in which a character uses the phrase to refer to execution by electric chair. Although rooted in the thrash metal genre, the album showcased the band's musical growth and lyrical sophistication. This was partly because bassist Cliff Burton introduced the basics of music theory to the rest of the band and had more input in the songwriting. Instead of relying heavily on fast tempos as on its debut Kill 'Em All, Metallica broadened its approach by employing acoustic guitars, extended instrumentals, and more complex harmonies. The overall recording costs were paid by Metallica's European label Music for Nations because Megaforce was unable to cover it. It is the last album to feature songwriting contributions from former lead guitarist Dave Mustaine, and the first to feature contributions from his replacement, Kirk Hammett.",
    IMAGE_PREVIEW_URL: "https://upload.wikimedia.org/wikipedia/en/f/f4/Ridetl.png",
    RELEASE_DATE: "27.07.1984",
    COUNTRIES: "US",
    MAIN_GENRE: "Thrash Metal",
    PERFORMER: "Metallica",
    AGE_RESTRICTIONS: "16+",
    TAGS: "Metallica, Thrash Metal",
    TRACKS: {
      FIGHT_FIRE_WITH_FIRE: {
        NAME: "Fight Fire with Fire",
        DESCRIPTION: "is about the end of the world being caused by heavy use of nuclear warfare (hence the line, \"nuclear warfare shall lay us to rest\"). The song suggests to \"fight fire with fire\" to potentially stop it, or possibly the term has been used so much, it is causing the end of the world. The same topic is also explored in a song called \"Blackened\", which is the opening track of Metallica's fourth album, ...And Justice for All. Fight Fire With Fire is also known to be one of Metallica's fastest and heaviest songs to date, with the main riff consisting of all sixteenth notes, requiring incredibly fast playing.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=xeK1E1HaMdY&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&ab_channel=Metallica-Topic",
        DURATION: "4:44",
      },
      RIDE_THE_LIGHTNING: {
        NAME: "Ride the Lightning",
        DESCRIPTION: "deals with capital punishment and the flaws that come with it. The protagonist of the story depicted within the song is a man who is convicted for an unknown crime and is executed via electrocution. In many interviews Hetfield stated that the song is not critical against the capital punishment, but that he wrote the lyrics trying to express the point of view of a person who deals with the electric chair.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=kk6wLZN4X74&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=2&ab_channel=Metallica-Topic",
        DURATION: "6:37",
      },
      FOR_WHOM_THE_BELL_TOLLS: {
        NAME: "For Whom the Bell Tolls",
        DESCRIPTION: "is about a section of the novel For Whom The Bell Tolls by Ernest Hemingway, in which International Brigades soldiers of the Spanish Civil War attempt to escape the fascists with their stolen horses and are killed by enemy aircraft on a hill on which they are surrounded. \"Make his fight on the hill in the early day...\". The chromatic introduction (which is usually mistaken for an electric guitar) is in fact Cliff Burton playing his bass guitar through distortion and wah-wah. The intro was written by Burton before joining Metallica. Burton plays it in a 12-minute jam at a battle of the bands with his first band \"Agent of Misfortune.\" After the introduction, the bass settles into a steady triplet rhythm.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=eeqGuaAl6Ic&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=3&ab_channel=Metallica-Topic",
        DURATION: "5:11",
      },
      FADE_TO_BLACK: {
        NAME: "Fade to Black",
        DESCRIPTION: "The lyrics suggest the story of a man contemplating, and eventually committing suicide. It was the first musical ballad released by the band. It was written by Kirk Hammett, James Hetfield, Cliff Burton, and Lars Ulrich.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=HdWw9SksiwQ&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=4&ab_channel=Metallica-Topic",
        DURATION: "6:55",
      },
      TRAPPED_UNDER_ICE: {
        NAME: "Trapped Under Ice",
        DESCRIPTION: "is about a Person who is Cryogenically Frozen And knows about it. Unable to do anything except To Helplessly Scream and Beg for Help. Hence the Name, Trapped Under Ice. It was written by James Hetfield, Lars Ulrich, and Kirk Hammett.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=fwDftMCOMZE&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=5&ab_channel=Metallica-Topic",
        DURATION: "4:04",
      },
      ESCAPE: {
        NAME: "Escape",
        DESCRIPTION: "is about escaping from reality, and living the way you want to (hence the lines, \"life's for my own to live my own way\"). It is about an escaped prisoner on the run, which can also be interpreted as an escape from everything which is preventing you from doing what you want to or even from being as you want to be. Another interpretation possibility is to live your life the way you want to live it, not the way anybody wants you to. Near the end of the song you can hear prison sirens in the background to emphasize the escape.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=rE0m2XkaJaU&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=6&ab_channel=Metallica-Topic",
        DURATION: "4:24",
      },
      CREEPING_DEATH: {
        NAME: "Creeping Death",
        DESCRIPTION: "is based off the second half of the movie The Ten Commandments, when the plagues are spreading and killing the people. Cliff Burton commented on it, saying that it was like \"creeping death\". The \"creeping death\" is actually the Plague of the Firstborn (Exodus 12:29). Some of the other plagues are mentioned in the song as well.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=xAOMEqMXiXI&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=7&ab_channel=Metallica-Topic",
        DURATION: "6:36",
      },
      THE_CALL_OF_KTULU: {
        NAME: "The Call of Ktulu",
        DESCRIPTION: "appears on a 1983 four-song demo for Ride the Lightning. Like the album, the demo closes with the instrumental, which was named \"When Hell Freezes Over\" at the time. The song was often played much faster live than the finished version. The current title of the song is named after author H.P. Lovecraft's most well-known story, the Call of Cthulhu. Lovecraft was introduced, along with his book \"The Shadow over Innsmouth\", to the rest of the band by Cliff Burton. The latter song inspired \"The Thing That Should Not Be\", written by Burton. In Lovecraft's stories, Cthulhu is a powerful, God-like alien from another dimension, who is worshipped by cults on earth who believe it is a demonic God - the song has various demonic growls and noises throughout.",
        SOURCE_LINK: "https://www.youtube.com/watch?v=TfGMinbSVI8&list=OLAK5uy_k4yeBNbCJLDBeqj_QsTlpRoncOxmGLQDo&index=8&ab_channel=Metallica-Topic",
        DURATION: "8:55",
      },
    },
  },
}

=begin
ActiveRecord::Base.transaction do
  GENRES.each do |genre_name|
    Genre.create(name: genre_name)
  end
end

ActiveRecord::Base.transaction do
  AGE_RESTRICTIONS.each do |age_restriction|
    AgeRestriction.create(value: age_restriction)
  end
end

ActiveRecord::Base.transaction do
  ROLES.each do |role|
    Role.create(name: role)
  end
end

ActiveRecord::Base.transaction do
  TEST_USERS_COUNT.times do |counter|
    email = "test-#{counter + 1}@gmail.com"
    password = "123456"
    User.create!(
      email: email,
      password: password,
      password_confirmation: password,
    )
  end
end

ActiveRecord::Base.transaction do
  TEST_USERS_COUNT.times do |counter|
    Album.create!(
      name: "Name #{counter + 1}",
      description: "Descr #{counter + 1}",
      release_date: DateTime.current.to_date + counter,
      image_preview_url: "https://www.hd-freewallpapers.com/latest-wallpapers/desktop-funny-images-of-dogs-and-puppies-download.jpg",
    )
  end
end

ActiveRecord::Base.transaction do
  UserProfile.create!(
    name: "Andrew",
    surname: "Pivovar",
    nickname: "Admin",
    date_of_birthday: DateTime.current.to_date,
    address: "Example address",
    user_id: 8,
  )
end

=end

ActiveRecord::Base.transaction do
  Album.where(performer: METALLICA[:KILL_EM_ALL][:PERFORMER]).destroy_all
  METALLICA.each_key do |album_key|
    album = METALLICA[album_key]
    metallica_album = Album.create!(
      name: album[:NAME],
      description: album[:DESCRIPTION],
      image_preview_url: album[:IMAGE_PREVIEW_URL],
      release_date: album[:RELEASE_DATE],
      countries: album[:COUNTRIES],
      main_genre: album[:MAIN_GENRE],
      performer: album[:PERFORMER],
      age_restrictions: album[:AGE_RESTRICTIONS],
    )

    album[:TRACKS].each_key do |track|
      track = album[:TRACKS][track]
      Track.create!(
        name: track[:NAME],
        description: track[:DESCRIPTION],
        source_link: track[:SOURCE_LINK],
        duration: track[:DURATION],
        tags: album[:TAGS],
        related_genres: album[:MAIN_GENRE],
        preview_picture: album[:IMAGE_PREVIEW_URL],
        album_id: metallica_album.id,
      )
    end
  end
end
