# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trip.create!([{
    title: "Swiss Bike Tour- Aare River",
    location: "Europe",
    length: "8-12 days",
    price: 899,
    overview: "The Aare Cycle Route begins in Interlaken on Lake Thun against the backdrop of the Jungfrau, Mönch and Eiger mountains and is one of the most well-known cycle routes in Switzerland. You will pass through the Swiss capital of Bern, a UNESCO World Heritage Site, where the famous Toblerone chocolate is made.

    Cycling along the Jura with its Baroque towns, you will come to the confluence of the Aare and Rhine Rivers and continue up-river towards the Rhine Falls, which you will be able to experience during a spectacular boat trip. The Council town of Constance on Lake Constance is your destination."
  },
  {
    title: "Alaskan Cruise",
    location: "North America",
    length: "9 days",
    price: 699,
    overview: "Searching for a grand Alaskan cruise at an unbelievably low price? You've come to the right site. Since 1984, we've helped more than six million people save hundreds of millions of dollars on cruises.

    Alaska cruises have surged in popularity in recent years, and demand to see America's last unspoiled frontier continues to grow. Enjoy Alaska's picturesque surrounding as you admire snowcapped peaks, mighty glaciers, steep fjords and such wildlife as whales, black bears, brown bears, bald eagles, sea otters and seals. Your journey will take you to historic gold rush towns and quaint fishing villages where you'll enjoy plenty of outdoor activities and immerse yourself in Alaska's unique culture.

    Alaska cruises are generally divided into three types, Inside Passage cruises, Gulf of Alaska cruises and small ship expedition-style cruises. The Inside Passage has been the traditional way to cruise Alaska, with most ships sailing round-trip from Vancouver or Seattle, through glacier country as far north as Skagway or Juneau. Gulf of Alaska cruises cover more territory as they travel from Vancouver through the Inside Passage and up to Seward/Anchorage (or the reverse). Small expedition-style ships explore isolated ports and remote waterways inaccessible to large ships, and enable you to see glaciers and wildlife up close.

    The cruising season in Alaska begins in May and lasts through September, and cruises usually last between seven and 12 days. Some cruise lines also offer cruise tours, a combination of an Alaskan cruise and a land tour. On the land tour portion, you will journey inland by train or motorcoach and visit scenic destinations like Denali National Park, the Yukon Territory or the Canadian Rockies. We offer huge discounts on all of these vacations, on every cruise line in Alaska."
  }])

User.create!([{
  name: "Mike Patterson",
  email: "mp@gmail.com",
  password: "123456"},
  {
    name: "Lucy",
    email: "lucy@gmail.com",
    password: "123456"}
  ])
