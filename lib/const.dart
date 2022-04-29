String kIconWay = 'assets/icons';
// video class for video page
class Video {
  String userImgUrl,
      likeCount,
      commentsCount,
      shereCount,
      songCoverImgUrl,
      songArtistName,
      songName,
      videoText,
      userName,
      videoImgUrl;
  Video(
      {required this.likeCount,
      required this.commentsCount,
      required this.shereCount,
      required this.songArtistName,
      required this.songCoverImgUrl,
      required this.songName,
      required this.userImgUrl,
      required this.userName,
      required this.videoText,
      required this.videoImgUrl});
}
// following video list
List<Video> kFollowingVideoList = [
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://tikstar-user-images.oss-cn-hongkong.aliyuncs.com/5281_6664428173876281346.jpg',
      userName: 'kellykimkim7',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/8GFjx2JmMmMAAAAd/kellykim-bxmbinx.gif'),
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://tikstar-user-images.oss-cn-hongkong.aliyuncs.com/5281_6664428173876281346.jpg',
      userName: 'kellykimkim7',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl:
          'https://c.tenor.com/Mn-cJNphcikAAAAC/bxmbinx-mamakelly.gif'),
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://tikstar-user-images.oss-cn-hongkong.aliyuncs.com/5281_6664428173876281346.jpg',
      userName: 'kellykimkim7',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/ltyaCUsJ7lQAAAAC/kellykim-bxmbinx.gif'),
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://tikstar-user-images.oss-cn-hongkong.aliyuncs.com/5281_6664428173876281346.jpg',
      userName: 'kellykimkim7',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/GLn0LFMmWiUAAAAd/kellykim-bxmbinx.gif'),
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://tikstar-user-images.oss-cn-hongkong.aliyuncs.com/5281_6664428173876281346.jpg',
      userName: 'kellykimkim7',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/1tNf9NuJcpAAAAAC/kellykim-bxmbinx.gif'),
];
// for you video list
List<Video> kForYouVideoList = [
  Video(
      likeCount: '6.2M',
      commentsCount: '47k',
      shereCount: '4672',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://i.pinimg.com/474x/b6/cb/4b/b6cb4bab2ac6e78d65cb9572f2589ea8.jpg',
      userName: 'charlidamelio',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/jjGWopuXFeIAAAAd/charli-d-amelio-dance.gif'),
  Video(
      likeCount: '2.5M',
      commentsCount: '12.5k',
      shereCount: '2678',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://i.ytimg.com/vi/F_xK1RY4MlA/maxresdefault.jpg',
      userName: 'khaby.lame',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl:
          'https://c.tenor.com/iax4jwoyMPMAAAAC/khaby-lame-tiktok.gif'),
  Video(
      likeCount: '7.1M',
      commentsCount: '123.2k',
      shereCount: '12784',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://media-cdn.ykt2.ru/upload/photo/2021/02/05/normal/99acc734-1bad-4df0-affc-ee0a58e99726.jpeg',
      userName: 'bellapoarch',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/zb98nn_hAgUAAAAM/meuf-tik-tok.gif'),
  Video(
      likeCount: '3.2M',
      commentsCount: '24.5k',
      shereCount: '1465',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://uploads-ssl.webflow.com/60c2316f312ff6b0fa9c945f/60db0d1dd65cc85c104edb37_zachking.jpeg',
      userName: 'zachking',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/wcL1_CVKnnwAAAAd/waterboy-glass.gif'),
  Video(
      likeCount: '2.2M',
      commentsCount: '4.5k',
      shereCount: '2495',
      songArtistName: 'ORKID',
      songCoverImgUrl:
          'https://artery.net/wp-content/uploads/2020/09/Omslag-1morenight-1-2048x2048.jpg',
      songName: '1morenight',
      userImgUrl:
          'https://pbs.twimg.com/media/EjfIul2UcAYjjqe.jpg',
      userName: 'addisonre',
      videoText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc #hashtag #second #third #fourth #fift',
      videoImgUrl: 'https://c.tenor.com/0KUYkDRRLuQAAAAM/tiktok-addison-rae.gif'),
];

// discovery page carusel items list
List kCaruselImgsUrl = [
  'https://c.tenor.com/SZx4iNs00egAAAAC/spinning-puppy.gif',
  'https://c.tenor.com/PY-XdBf0AT4AAAAM/dribbling-dribble.gif',
  'https://c.tenor.com/2UjMo8Id_T8AAAAC/etougas-etoughas-cutie-tiktok-cosplayer.gif',
  'https://c.tenor.com/aKg0UTNRPzgAAAAC/spiderman-tik-tok.gif',
];
// discovery page nba hashtag items list
List kNbaHashtag = [
  'https://c.tenor.com/ZlEkkhU0oiwAAAAM/nba-stephen-curry.gif',
  'https://c.tenor.com/JUVD6CVzh5QAAAAM/teteasolid.gif',
  'https://c.tenor.com/t1_ds7a7pBUAAAAM/for-kobe-legend.gif',
  'https://c.tenor.com/jOlvHx-q1DoAAAAd/jp-jp3.gif',
  'https://c.tenor.com/-1bT73AdVpgAAAAM/teteakanpe.gif',
  'https://c.tenor.com/wZQIPTy9nn4AAAAM/teteakanpe.gif',
];
// discovery page cosplay hashtag items list
List kCosplayHashtag = [
  'https://c.tenor.com/AupcC8GR_9gAAAAC/etougas-etoughas-cutie-tiktok-cosplayer.gif',
  'https://c.tenor.com/0FMu7oC5HN8AAAAM/occultmage-chainsaw-man.gif',
  'https://c.tenor.com/oOG91PNWDxgAAAAC/nyannyancosplay-nyarmy.gif',
  'https://c.tenor.com/nJKN1gNy7D0AAAAM/megumin-cosplay.gif',
  'https://c.tenor.com/dM5a76dVVEoAAAAM/mikasa-ackerman-makinator.gif',
  'https://c.tenor.com/UPVxethrS-gAAAAC/emiru-seraphine.gif',
];
// discovery page anime hashtag items list
List kAnimeHashtag = [
  'https://c.tenor.com/5yieLyDi4OgAAAAd/tiktok-dance.gif',
  'https://c.tenor.com/2Olsgciq1hkAAAAd/cool-anime-thunder-bro-bro-bro.gif',
  'https://c.tenor.com/R3MpDW_X0TUAAAAM/anime-wipe-your-hand-along-to-the-beat.gif',
  'https://c.tenor.com/7YE6ULQ9MgwAAAAC/tik-tok.gif',
  'https://c.tenor.com/Tj61nBtXSHEAAAAd/tiktok-dance.gif',
  'https://c.tenor.com/yLD2ripVij4AAAAd/morning-anime.gif',
];
// profile page user tik toks list
List kUserTikToks = [
  'https://c.tenor.com/y97_6ToTdfQAAAAC/aya-shalkar.gif',
  'https://c.tenor.com/0Nvy79V2ZLYAAAAd/aya-shalkar.gif',
  'https://c.tenor.com/mvc8E9JkfH0AAAAd/aya-shalkar.gif',
  'https://c.tenor.com/HmjxhRejpKgAAAAC/aya-shalkar.gif',
  'https://c.tenor.com/XWP-rsHQEToAAAAC/aya-shalkar.gif',
];
// profile page user liked tik toks list
List kUserLikedTikToks = [
  'https://c.tenor.com/ltyaCUsJ7lQAAAAC/kellykim-bxmbinx.gif',
  'https://c.tenor.com/zpnpb233zScAAAAC/mamakelly-kellykimkim.gif',
  'https://c.tenor.com/aAZx8xVHox4AAAAd/bxmbinx-kellykimkim.gif',
  'https://c.tenor.com/onfstwDN8vUAAAAC/kellykim-bxmbinx.gif',
];
