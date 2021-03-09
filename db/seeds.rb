# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Review.destroy_all
Boardgame.destroy_all

u1 = User.create(name: "Sin")
u2 = User.create(name: "Chloe")
u3 = User.create(name: "Jean")
u4 = User.create(name: "Deirdre")
u5 = User.create(name: "Dom")

b1 = Boardgame.create(name: "Gloomhaven (2017)", image_url: "https://cf.geekdo-images.com/sZYp_3BTDGjh2unaZfZmuA__imagepage/img/pBaOL7vV402nn1I5dHsdSKsFHqA=/fit-in/900x600/filters:no_upscale():strip_icc()/pic2437871.jpg", 
theme: "Thematic", duration: "60–120 Min", num_of_players: "1-4 Players", age_requirements: "14+", description: "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take 
on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. Players must work together out of necessity to clear out menacing dungeons 
and forgotten ruins. In the process, they will enhance their abilities with experience and loot, discover new locations to explore and plunder, and expand an ever-branching story fueled by the decisions they make. This 
is a game with a persistent and changing world that is ideally played over many game sessions. After a scenario, players will make decisions on what to do, which will determine how the story continues, kind of like a 
“Choose Your Own Adventure” book. Playing through a scenario is a cooperative affair where players will fight against automated monsters using an innovative card system to determine the order of play and what a player 
does on their turn. Each turn, a player chooses two cards to play out of their hand. The number on the top card determines their initiative for the round. Each card also has a top and bottom power, and when it is a player’s 
turn in the initiative order, they determine whether to use the top power of one card and the bottom power of the other, or vice-versa. Players must be careful, though, because over time they will permanently lose cards 
from their hands. If they take too long to clear a dungeon, they may end up exhausted and be forced to retreat.")
b2 = Boardgame.create(name: "Pandemic Legacy: Season 1 (2015)", image_url: "https://cf.geekdo-images.com/-Qer2BBPG7qGGDu6KcVDIw__imagepage/img/qZybAu8uJ9_sZlU2A65DIF6Y2Zw=/fit-in/900x600/filters:no_upscale():strip_icc()/pic2452831.png", 
theme: "Thematic", duration: "60 Min", num_of_players: "2–4 Players", age_requirements: "13+", description: "Pandemic Legacy is a co-operative campaign game, with an overarching story-arc played through 12-24 sessions, depending on how 
well your group does at the game. At the beginning, the game starts very similar to basic Pandemic, in which your team of disease-fighting specialists races against the clock to travel around the world, treating disease hotspots while 
researching cures for each of four plagues before they get out of hand. During a player's turn, they have four actions available, with which they may travel around in the world in various ways (sometimes needing to discard a card), 
build structures like research stations, treat diseases (removing one cube from the board; if all cubes of a color have been removed, the disease has been eradicated), trade cards with other players, or find a cure for a disease 
(requiring five cards of the same color to be discarded while at a research station). Each player has a unique role with special abilities to help them at these actions. After a player has taken their actions, they draw two cards. These 
cards can include epidemic cards, which will place new disease cubes on the board, and can lead to an outbreak, spreading disease cubes even further. Outbreaks additionally increase the panic level of a city, making that city more expensive 
to travel to. Each month in the game, you have two chances to achieve that month's objectives. If you succeed, you win and immediately move on to the next month. If you fail, you have a second chance, with more funding for beneficial event cards.
During the campaign, new rules and components will be introduced. These will sometimes require you to permanently alter the components of the game; this includes writing on cards, ripping up cards, and placing permanent stickers on components. 
Your characters can gain new skills, or detrimental effects. A character can even be lost entirely, at which point it's no longer available for play. Part of the Pandemic series")
b3 = Boardgame.create(name: "Brass: Birmingham (2018)", image_url: "https://cf.geekdo-images.com/x3zxjr-Vw5iU4yDPg70Jgw__imagepage/img/-17KkOmxbTu2slJTabGrkO8ZW8s=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3490053.jpg", 
theme: "Strategy", duration: "60–120 Min", num_of_players: "2–4 Players", age_requirements: "14+", description: "Brass: Birmingham is an economic strategy game sequel to Martin Wallace' 2007 masterpiece, Brass. Birmingham tells the 
story of competing entrepreneurs in Birmingham during the industrial revolution, between the years of 1770-1870. As in its predecessor, you must develop, build, and establish your industries and network, in an effort to exploit low 
or high market demands. Each round, players take turns according to the turn order track, receiving two actions to perform any of the following actions (found in the original game): 1) Build - Pay required resources and place an industry tile. 
2) Network - Add a rail / canal link, expanding your network. 3) Develop - Increase the VP value of an industry. 4) Sell - Sell your cotton, manufactured goods and pottery. 5) Loan - Take a £30 loan and reduce your income. 
 Brass: Birmingham also features a new sixth action: 6) Scout - Discard three cards and take a wild location and wild industry card. (This action replaces Double Action Build in original Brass.) The game is played over two halves: the canal  
era (years 1770-1830) and the rail era (years 1830-1870). To win the game, score the most VPs. VPs are counted at the end of each half for the canals, rails and established (flipped) industry tiles. Birmingham features dynamic scoring canals/rails. 
Instead of each flipped industry tile giving a static 1 VP to all connected canals and rails, many industries give 0 or even 2 VPs. This provides players with the opportunity to score much higher value canals in the first era, and creates interesting 
strategy with industry placement. Iron, coal, and cotton are three industries which appear in both the original Brass as well as in Brass: Birmingham. New Sell system. Brewing has become a fundamental part of the culture in Birmingham. You must now 
sell your product through traders located around the edges of the board. Each of these traders is looking for a specific type of good each game. To sell cotton, pottery, or manufactured goods to these traders, you must also 'grease the wheels of industry' 
by consuming beer. For example, a level 1 cotton mill requires one beer to flip. As an incentive to sell early, the first player to sell to a trader receives free beer. Birmingham features three all-new industry types:
Brewery - Produces precious beer barrels required to sell goods.
Manufactured goods - Function like cotton, but features eight levels. Each level of manufactured goods provides unique rewards, rather than just escalating in VPs, making it a more versatile (yet potentially more difficult) path vs cotton.
Pottery - These behemoths of Birmingham offer huge VPs, but at a huge cost and need to plan.
Increased Coal and Iron Market size - The price of coal and iron can now go up to £8 per cube, and it's not uncommon.
Brass: Birmingham is a sequel to Brass. It offers a very different story arc and experience from its predecessor.")
b4 = Boardgame.create(name: "Terraforming Mars (2016)", image_url: "https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__imagepage/img/FS1RE8Ue6nk1pNbPI3l-OSapQGc=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3536616.jpg", 
theme: "Strategy", duration: "120 Min", num_of_players: "1–5 Players", age_requirements: "12+", description: "In the 2400s, mankind begins to terraform the planet Mars. Giant corporations, sponsored by the World Government on Earth, 
initiate huge projects to raise the temperature, the oxygen level, and the ocean coverage until the environment is habitable. In Terraforming Mars, you play one of those corporations and work together in the terraforming process, but 
compete for getting victory points that are awarded not only for your contribution to the terraforming, but also for advancing human infrastructure throughout the solar system, and doing other commendable things. The players acquire 
unique project cards (from over two hundred different ones) by buying them to their hand. The projects (cards) can represent anything from introducing plant life or animals, hurling asteroids at the surface, building cities, to mining 
the moons of Jupiter and establishing greenhouse gas industries to heat up the atmosphere. The cards can give you immediate bonuses, as well as increasing your production of different resources. Many cards also have requirements and 
they become playable when the temperature, oxygen, or ocean coverage increases enough. Buying cards is costly, so there is a balance between buying cards (3 megacredits per card) and actually playing them (which can cost anything 
between 0 to 41 megacredits, depending on the project). Standard Projects are always available to complement your cards. Your basic income, as well as your basic score, is based on your Terraform Rating (starting at 20), which 
increases every time you raise one of the three global parameters. However, your income is complemented with your production, and you also get VPs from many other sources. Each player keeps track of their production and resources on 
their player boards, and the game uses six types of resources: MegaCredits, Steel, Titanium, Plants, Energy, and Heat. On the game board, you compete for the best places for your city tiles, ocean tiles, and greenery tiles. You also 
compete for different Milestones and Awards worth many VPs. Each round is called a generation (guess why) and consists of the following phases: 1) Player order shifts clockwise. 2) Research phase: All players buy cards from four privately drawn. 
3) Action phase: Players take turns doing 1-2 actions from these options: Playing a card, claiming a Milestone, funding an Award, using a Standard project, converting plant into greenery tiles (and raising oxygen), converting heat into a 
temperature raise, and using the action of a card in play. The turn continues around the table (sometimes several laps) until all players have passed. 4) Production phase: Players get resources according to their terraform rating and 
production parameters. When the three global parameters (temperature, oxygen, ocean) have all reached their goal, the terraforming is complete, and the game ends after that generation. Count your Terraform Rating and other VPs to determine 
the winning corporation!")
b5 = Boardgame.create(name: "Twilight Imperium: Fourth Edition (2017)", image_url: "https://cf.geekdo-images.com/_Ppn5lssO5OaildSE-FgFA__imagepage/img/0AK9hQgpcOOOLJh8IEZS3Nw57vE=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3727516.jpg", 
theme: "Thematic", duration: "240–480 Min", num_of_players: "3–6 Players", age_requirements: "14+", description: "Twilight Imperium (Fourth Edition) is a game of galactic conquest in which three to six players take on the role of one of seventeen 
factions vying for galactic domination through military might, political maneuvering, and economic bargaining. Every faction offers a completely different play experience, from the wormhole-hopping Ghosts of Creuss to the Emirates of Hacan, masters 
of trade and economics. These seventeen races are offered many paths to victory, but only one may sit upon the throne of Mecatol Rex as the new masters of the galaxy. No two games of Twilight Imperium are ever identical. At the start of each galactic 
age, the game board is uniquely and strategically constructed using 51 galaxy tiles that feature everything from lush new planets and supernovas to asteroid fields and gravity rifts. Players are dealt a hand of these tiles and take turns creating the 
galaxy around Mecatol Rex, the capital planet seated in the center of the board. An ion storm may block your race from progressing through the galaxy while a fortuitously placed gravity rift may protect you from your closest foes. The galaxy is yours 
to both craft and dominate. A round of Twilight Imperium begins with players selecting one of eight strategy cards that both determine player order and give their owner a unique strategic action for that round. These may do anything from providing 
additional command tokens to allowing a player to control trade throughout the galaxy. After these roles are selected, players take turns moving their fleets from system to system, claiming new planets for their empire, and engaging in warfare and 
trade with other factions. At the end of a turn, players gather in a grand council to pass new laws and agendas, shaking up the game in unpredictable ways. After every player has passed their turn, players move up the victory track by checking to 
see whether they have completed any objectives throughout the turn and scoring them. Objectives are determined by setting up ten public objective cards at the start of each game, then gradually revealing them with every round. Every player also 
chooses between two random secret objectives at the start of the game, providing victory points achievable only by the holder of that objective. These objectives can be anything from researching new technologies to taking your neighbor's home system. 
At the end of every turn, a player can claim one public objective and one secret objective. As play continues, more of these objectives are revealed and more secret objectives are dealt out, giving players dynamically changing goals throughout the game. 
Play continues until a player reaches ten victory points.")

r1 = Review.create(content: "Amazing", user_id: u1.id, boardgame_id: b1.id)
r2 = Review.create(content: "Worse game I have ever played", user_id: u2.id, boardgame_id: b2.id)
r3 = Review.create(content: "Too time consuming for such a simple game", user_id: u3.id, boardgame_id: b3.id)
r4 = Review.create(content: "Loved this game, can't wait for the expansion", user_id: u4.id, boardgame_id: b4.id)
r5 = Review.create(content: "Excellent", user_id: u5.id, boardgame_id: b5.id)