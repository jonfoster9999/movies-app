# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	{
  		:name => "",
		:bio => "", 
	 	:image_url => ""
	}

Category.create!([
	{:name => "Comedy"},
	{:name => "Drama"},
	{:name => "Horror"},
	{:name => "Action"},
	{:name => "Family"}
	])

Location.create!([
		{:city =>"Southampton", :zip => 11968},
		{:city =>"Easthampton", :zip => 11937},
		{:city =>"Sag Harbor", :zip => 11963},
		{:city =>"Montauk", :zip => 11954},
		{:city =>"Mattituck", :zip => 11952},
		{:city =>"Quogue", :zip => 11942},
		{:city =>"Stony Brook", :zip => 11733},
		{:city =>"Southold", :zip => 11971},
		{:city =>"Greenport", :zip => 11944},
		{:city =>"Water Mill", :zip => 11976}
	])

Category.find_by(:name => "Drama").movies.create!([
	{:title => "The Case For Christ",
	 :description => "Alarmed by his wife's sudden devotion to Christianity, an atheist journalist (Mike Vogel) sets out to prove that the religion is a sham. Instead, his investigation leads him to become a believer himself. Erika Christensen, Faye Dunaway, and Robert Forster co-star. Based on the true story of Lee Strobel, author of the best-selling book The Case for Christ. ~ Jack Rodgers, Rovi",
	 :image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/199083/caseforchrist_poster.jpg"
	 },
	{
  		:title => "Ghost In The Shell",
		:description => "In a future in which humanity and technology have begun to merge, a cybernetically enhanced policewoman (Scarlett Johansson) hunts a mysterious terrorist who can hack into his victims' minds and control their thoughts and memories. Her pursuit eventually leads her to discover the full truth about her traumatic past. Pilou Asbaek, Takeshi Kitano, Juliette Binoche, and Michael Pitt co-star. Directed by Rupert Sanders (Snow White and the Huntsman), Ghost in the Shell is based on a popular Japanese manga series, which was already adapted into an iconic anime film of the same name.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/194493/gits_online_rated-payoff-ve.jpg"
	},
	{
  		:title => "The Zookeeper's Wife",
		:description => "A husband (Johan Heldenbergh) and wife (Jessica Chastain) in Nazi-occupied Poland use their positions as caretakers at the Warsaw Zoo to shepherd Jews out of the country. Based on the non-fiction book of the same name by Diane Ackerman, The Zookeeper's Wife was directed by Niki Caro (Whale Rider).", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/188135/zookeeperswife.jpg"
	},
	{
  		:title => "The Shack",
		:description => "After a loving father (Sam Worthington) endures a family tragedy that rocks him to his core, he receives a mysterious invitation to \"The Shack,\" a decrepit shelter where an unimaginable horror once took place. But, much to his surprise, his visit prompts a divine intervention from a series of strangers (Octavia Spencer, Graham Greene, Avraham Aviv Alush, and Sumire Matsubara), and the group soon lead him on a theological inquiry in the hope of getting him unstuck from his grief by reminding him of the all-encompassing love of God. Based on the best-selling allegorical novel by William Paul Young.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/198127/fin09_theshack_1sht_payoff_.jpg"
	},
	{
  		:title => "Hidden Figures",
		:description => "Three female African-American mathematicians (Taraji P. Henson, Octavia L. Spencer, and Janelle Monae) provide crucial calculations for NASA's space race against the Soviets, all while dealing with the racist and sexist assumptions of their white co-workers. Kevin Costner, Kirsten Dunst, and Jim Parsons co-star in this adaptation of the book of the same name by Margot Lee Shetterly. Directed by Theodore Melfi. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/192068/hiddenfigures.jpg"
	},
	{
  		:title => "T2: Trainspotting",
		:description => "This sequel to the seminal '90s indie smash Trainspotting catches up with its quartet of Scottish junkies 20 years later. Mark Renton (Ewan McGregor) finally returns to Edinburgh after a long exile in Amsterdam, and he soon reunites with his old pals Sick Boy (Jonny Lee Miller) and Spud (Ewen Bremner). As he tries to help Spud kick his heroin addiction and gets caught up in a scheme to open a brothel with Sick Boy, Renton is targeted by the sociopathic Begbie (Robert Carlyle), who wants revenge for his past misdeeds. Danny Boyle directed this follow-up, which is partly based on author Irvine Welsh's 2002 novel, Porno.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/194448/t2_digi_1sht_fnl_05.jpg"
	},
	{
  		:title => "Lion",
		:description => "In this adaptation of the memoir A Long Way Home by Saroo Brierley, a five-year-old Indian boy is adopted by an Australian couple after he gets lost in Calcutta. Years later, he struggles with his memories of his birth family, and decides to begin a search for them. Dev Patel stars as the adult Brierley in this drama directed by Garth Davis. Nicole Kidman, David Wenham, and Rooney Mara co-star.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/192142/lion-theatrical-onesheet.jpg"
	},
	{
  		:title => "La La Land",
		:description => "Struggling actress Mia (Emma Stone) and aspiring jazz pianist Sebastian (Ryan Gosling) begin a whirlwind romance as they both pursue their dreams in Los Angeles. However, their blossoming relationship is challenged when their careers pull them in different directions. Damien Chazelle (Whiplash) wrote and directed this musical love story, which co-stars John Legend, J.K. Simmons, and Rosemarie DeWitt. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/188460/la-la-land-festival-poster.jpg"
	},
	{
  		:title => "Personal Shopper",
		:description => "Director Olivier Assayas reunites with Kristen Stewart in this drama about a young woman who works as a personal shopper to an egotistical celebrity in Paris. While spending much of her time buying expensive clothes and jewelry for Kyra (Nora von Waldstätten), Maureen (Stewart) is also a spiritual medium trying to make contact with her twin brother, who recently died of a congenital heart condition that affects her as well.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196034/personalshopper-posterart.jpg"
	},
	{
  		:title => "Before I Fall",
		:description => "A popular, selfish high schooler (Zoey Deutch) keeps reliving the same day over and over again, which ends with her and her friends getting into a fatal car accident. In time, she must learn how to prevent the accident while becoming a better, kinder person to those around her. Halston Sage, Logan Miller, Kian Lawley, Elena Kampouris, and Jennifer Beals co-star. Directed by Ry Russo-Young, this drama was based on the YA novel of the same name by Lauren Oliver.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/198095/beforeifall.jpg"
	}
	])

Category.find_by(:name => "Family").movies.create!([
	{
  		:title => "Beauty And The Beast",
		:description => "Bill Condon (Dreamgirls) directed this live-action retelling of the Disney animated classic from 1991. As before, this fairy tale centers on a young woman named Belle (Emma Watson), who is forced to live in an enchanted castle with a prince who is cursed to look like a hideous Beast (Dan Stevens). In time, the pair fall in love as Belle learns to see the good man hiding behind the Beast's monstrous exterior. The film co-stars Luke Evans as Gaston, Ewan McGregor as Lumière, Emma Thompson as Mrs. Potts, Ian McKellen as Cosgworth, Kevin Kline as Belle's father, and Josh Gad as Gaston's sidekick LeFou." , 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/193099/beautyandthebeast2d-postera.jpg"
	},
	{
  		:title => "The Boss Baby",
		:description => "A seven-year-old boy (voice of Miles Christopher Bakshi) has his life turned upside down by his new brother, an infant known as the Boss Baby (Alec Baldwin) who wears a suit and has the brusque manner of a businessman. However, the two are forced to get past their initial antagonism when they must work together on a mission of espionage involving the rivalry between babies and puppies. Steve Buscemi, Lisa Kudrow, Jimmy Kimmel, and Tobey Maguire also lend their voices to this animated comedy, which is based on a picture book by Marla Frazee.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/192069/bossbabycrop.jpg"
	},
	{
  		:title => "The Lego Batman Movie",
		:description => "Batman (voice of Will Arnett) defends Gotham City from criminals and supervillains while bonding with a young orphan (Michael Cera) he accidentally adopted -- who, of course, eventually becomes his sidekick Robin. This spin-off of The Lego Movie also features the voices of Rosario Dawson as Batgirl, Zach Galifianakis as the Joker, and Ralph Fiennes as Batman's loyal butler Alfred Pennyworth. Directed by Chris McKay (Robot Chicken).", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/191368/legobatmanmovie-posterart.jpg"
	},
	{
  		:title => "My Life As A Zucchini",
		:description => "After the death of his mother, a shy young boy (voiced by Gaspard Schlatter) is sent to live at an orphanage. There, he falls in love with a fellow orphan and begins to move past his grief. Claude Barras directed this stop-motion-animated comedy-drama.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/197346/my_life_as_a_zucchini.jpg"
	},
	{
  		:title => "Smurfs: The Lost Villiage",
		:description => "The little blue homunculi created by Belgian cartoonist Peyo return for another adventure, this time involving a quest through the Forbidden Forest to discover a long-hidden village hinted at in a treasure map. Smurfette (voiced by Demi Lovato), Brainy (Danny Pudi), Clumsy (Jack McBrayer), and Hefty (Joe Manganiello) must evade the clutches of the evil wizard Gargamel (Rainn Wilson) as they embark on their journey to find another community of Smurfs. Julia Roberts, Ariel Winter, Michelle Rodriguez, Ellie Kemper, and Mandy Patinkin also lend their voices to this animated fantasy. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/159277/stlv_digi_1sht_in3d_lk2_02.jpg"
	},
	{
  		:title => "Spark: A Space Tale",
		:description => "A lively space monkey (voiced by Jace Norman) helps his pals Chunk the warthog (Rob deLeeuw) and Vix the fox (Jessica Biel) rescue Planet Bana before the evil General Zhong (Alan C Peterson) awakens the power of the Kraken.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/199987/spark_1sht_hero_v8simple.jpg"
	},
	{
  		:title => "Leap!",
		:description => "In 19th century France, a young orphan named Félicie (voice of Elle Fanning) dreams of becoming a ballerina. She and her best friend Victor (voice of Dane DeHaan) soon run away to Paris, where she enrolls in a prestigious dance school and competes for a chance to be a prima ballerina. Carly Rae Jepsen and Maddie Ziegler also lend their voices to this animated tale, which was directed by Eric Summer and Éric Warin. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196649/leap_teaser_27x40_r5.jpg"
	},
	{
  		:title => "Rock Dog",
		:description => "A Tibetan mastiff (voiced by Luke Wilson) must defy the naysayers in his remote mountain community in order to follow his dream of becoming a rock star like his idol, Angus Scattergood (Eddie Izzard). But there's no one left to guard the sheep when he goes away to seek his fortune in the big city, rendering his flock vulnerable to a hungry wolf (Lewis Black). This animated feature was produced by Chinese rock singer/songwriter Zheng Jun. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196708/rockdog_1sht_payoff_vf.jpg"
	},
	{
  		:title => "The Outcasts",
		:description => "No Description Available.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/200878/theoutcasts2017.jpg"
	}
])

Category.find_by(:name => "Comedy").movies.create!([
	{
  		:title => "Get Out",
		:description => "A young African-American photographer (Daniel Kaluuya) is nervous at the thought of meeting his white girlfriend's parents (Catherine Keener and Bradley Whitford) for the first time during a trip to the latter's country estate. However, his anxiety soon turns into outright terror when he discovers that the family's seemingly idyllic community is hiding a sinister conspiracy, one that involves the disappearance of several black people in the area. Jordan Peele, one half of the comedic duo Key & Peele, makes his directorial debut with this horror thriller. Allison Williams, LaKeith Stanfield, and Caleb Landry Jones co-star.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196665/get%20out.jpg"
	},
	{
  		:title => "Chips",
		:description => "A maverick motorbike racer (Dax Shepherd) reeling from a divorce and a California Highway Patrol cop (Michael Peña) who's secretly an FBI operative must overcome their personality mismatch and work together to uncover a major theft in this big-screen adaptation of the famous TV series from the 1970s and '80s.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/183258/chips-posterart.jpg"
	},
	{
  		:title => "The Last Word",
		:description => "An aging businesswoman named Harriet (Shirley MacLaine) asks a young writer (Amanda Seyfried) from her local newspaper to draft her obituary. Harriet's domineering personality has left her with few friends or loved ones to contribute to the memorial, forcing her to make a change if she wants to leave behind a positive legacy. Directed by Mark Pellington.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/198612/thelastword-posterart.jpg"
	},
	{
  		:title => "Wilson",
		:description => "A salty curmudgeon (Woody Harrelson) who is discontented with how his life has stalled is shocked to discover he has a now-teenage daughter (Isabella Amara) put up for adoption by his ex-wife (Laura Dern) after their split. He tries to reunite the family, but his abrasive personality makes getting reacquainted unpleasant for everyone. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/193116/wilson_1sheet_27x40_framed-.jpg"
	},
	{
  		:title => "Phillauri",
		:description => "In order to break a curse on his love life, a young man (Suraj Sharma) must marry a tree before wedding the woman of his dreams. However, the tree he chooses is possessed by the spirit of a woman (Anushka Sharma) who was wronged in the past. Anshai Lal directed this romantic Bollywood comedy-drama.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/199803/05-romantic-poster-001245_c.jpg"
	},
	{
  		:title => "For Here Or To Go?",
		:description => "No description available.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/200235/fhtg-poster-web.jpg"
	},
	{
  		:title => "Paterson",
		:description => "A week in the life of Paterson (Adam Driver), a city bus driver in Paterson, NJ, as he balances the demands of his working-class job with his passion for poetry and the creative yearnings of his stay-at-home wife Laura (Golshifteh Farahani). Jim Jarmusch wrote and directed this meditative, slice-of-life dramedy.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/195872/paterson-poster.jpg"
	},
	{
  		:title => "Carrie Pilby",
		:description => "Carrie Pilby (Bel Powley) is a precocious and misanthropic 19-year-old Harvard grad who looks down on the rest of humanity. But when her therapist (Nathan Lane) assigns her five tasks so she can learn how to negotiate the messy world of adulthood, she is forced to form interpersonal relationships and confront past traumas for the first time. Based on the novel by Caren Lissner.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/200320/carriepilby_payoff_fm1.jpg"
	},
	{
  		:title => "20th Century Women",
		:description => "During the summer of 1979, at the sunset of the Carter presidency, a Santa Barbara single mom and boardinghouse landlord (Annette Bening) decides that the best way she can parent her teenage son (Lucas Jade Zumann) is to enlist her young tenants -- a quirky punk photographer (Greta Gerwig), a mellow handyman (Billy Crudup), and her son's shrewd but troubled best friend (Elle Fanning) -- to serve as his role models in a rapidly changing world. Written and directed by Mike Mills (Beginners).", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196513/20thcenturywomen.jpg"
	}
])

Category.find_by(:name => "Action").movies.create!([
	{
  		:title => "Power Rangers",
		:description => "Five teenagers (Dacre Montgomery, Naomi Scott, RJ Cyler, Becky G, and Ludi Lin) become superpowered warriors in this reboot of the long-running kids' action franchise. The outcast teens are thrust into battle against the evil witch and former Ranger Rita Repulsa (Elizabeth Banks) in a fight for fate of the world. Dean Israelite directed this action adventure written by John Gatins.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/193770/powerrangersfin05_shirt_1sh.jpg"
	},
	{
  		:title => "Kong: Skull Island",
		:description => "A secret government organization mounts an expedition to Skull Island, an uncharted territory in the Pacific. Led by an explorer (John Goodman) and a lieutenant colonel (Samuel L. Jackson), the group recruit a disillusioned soldier (Tom Hiddleston) and a photojournalist (Brie Larson) to investigate the island's peculiar seismic activity. But once there, they discover that Skull Island is home to a gigantic ape called King Kong, and find themselves caught up in an ongoing war between the beast and the area's indigenous predators. Jordan Vogt-Roberts directed this reboot of the classic monster franchise.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/194236/kongskullisland.jpg"
	},
	{
  		:title => "Logan",
		:description => "In a hideout near the U.S./Mexico border, an aging Logan (Hugh Jackman) cares for the ailing Professor X (Patrick Stewart). However, their sheltered existence comes to a sudden end when a young mutant girl (Dafne Keen) arrives and needs their help to stay safe. James Mangold directed this film, the third Wolverine-based spin-off of the X-Men franchise. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/196901/logan_48x70forfandango_srgb.jpg"
	},
	{
  		:title => "The Belko Experiment",
		:description => "The 80 employees at a Bogotá, Colombia, company called the Belko Corporation are horrified when they are suddenly locked in their office building and ordered to kill each other -- or else face death themselves. Soon, the staff are torn between those willing to give in to their baser instincts, and those arguing that they should stand firm against their captors. John Gallagher Jr., Adria Arjona, Sean Gunn, Tony Goldwyn, and John C. McGinley star in this horror thriller directed by Greg McLean (Wolf Creek).", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/198373/belko_one_sheet_r1.jpg"
	},
	{
  		:title => "Rogue One",
		:description => "This prequel to the very first Star Wars tells the thrilling story of how a ragtag band of freedom fighters -- including a former soldier-turned-prisoner (Felicity Jones), a Rebel Alliance insider (Diego Luna), an intensely spiritual believer in the Force (Donnie Yen), and a sentient robot (voiced by Alan Tudyk) -- worked together to steal the Death Star's secret blueprints. Ben Mendelsohn, Forest Whitaker, Riz Ahmed, Mads Mikkelsen, and Jimmy Smits co-star in Rogue One, the first of several Star Wars spin-offs planned after J.J. Abrams' Star Wars: The Force Awakens reboot.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/187530/rogueone-posterart.jpg"
	},
	{
  		:title => "John Wick: Chapter 2",
		:description => "Legendary hitman John Wick (Keanu Reeves) is once again called out of retirement, this time by a former colleague (Riccardo Scamarcio) who wants him to repay a debt by killing an Italian crime lord (Claudia Gerini). But when the attempted assassination goes awry, Wick finds himself hunted by an international cabal of killers, and his only hope for survival might be a shadowy figure known as the Bowery King (Laurence Fishburne). Director Chad Stahelski and screenwriter Derek Kolstad return for this sequel to their 2014 cult action hit. Ian McShane, Ruby Rose, John Leguizamo, Common, Lance Reddick, and Bridget Moynahan co-star.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/168/250/redesign/static/img/default_poster.png/196418/images/masterrepository/fandango/196418/fin04_johnwick2_payoff_vf.jpg"
	},
	{
  		:title => "The Prison",
		:description => "A police inspector (Han Suk-Kyu) is jailed after he's involved in a fatal hit-and-run accident, and the prison he's sent to is controlled by an all-powerful inmate (Kim Rae-Won) and his syndicate. The ex-cop soon joins the criminal organization, who execute high-stakes heists on the outside at night. This action thriller was directed by Na Hyun. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/200521/theprison-posterart.jpg"
	}

])

Category.find_by(:name => "Horror").movies.create!([
	{
  		:title => "Life",
		:description => "This science fiction saga tells the story of astronauts on the International Space Station who retrieve a sample from Mars and discover it contains evidence of intelligent life. The crew is thrust into danger when the specimen shows signs of aggression, threatening the entire mission. Jake Gyllenhaal stars alongside Ryan Reynolds and Rebecca Ferguson. Daniel Espinosa directed a script written by Deadpool scribes Paul Wernick and Rhett Reese.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/197664/life_digi_fnl_1sht_0203_01.jpg"
	},
	{
  		:title => "The Blackcoat's Daughter",
		:description => "Two female students (Kiernan Shipka and Lucy Boynton) are haunted by devilish forces while stranded at their Catholic prep school over winter break. Meanwhile, a mysterious hospital escapee (Emma Roberts) charts a course toward the school, and ends up getting a ride from a grieving, middle-aged couple (James Remar and Lauren Holly). Oz Perkins made his directorial debut with this horror feature, which received its world premiere at the 2015 Toronto International Film Festival. ", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/192327/tbd_theatrical_poster_hires.jpg"
	},
	{
  		:title => "Here Alone",
		:description => "In this science-fiction thriller set in a world ravaged by zombies, a young woman named Ann (Lucy Walters) lives an isolated existence in the woods. When she crosses paths with two other survivors, a teen girl (Gina Piersanti) and her injured stepfather (Adam David Thompson), she must choose between safety in numbers or continuing to go it alone. Directed by Rod Blackhurst.", 
	 	:image_url => "http://images.fandango.com/r1.0.23/ImageRenderer/164/250/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/192354/herealone_poster_2764x4096.jpg"
	}
])

#ACTOR SEEDS
Movie.find_by(:title => "The Case For Christ").actors.create!([
	{
  		:name => "Mike Vogel",
		:bio => "Mike Vogel was born on July 17, 1979 in Abington, Pennsylvania, USA as Michael James Vogel. He is an actor and producer, known for Cloverfield (2008), The Help (2011) and Blue Valentine (2010). He has been married to Courtney Vogel since January 4, 2003. They have three children.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTkwNDIzMTExOV5BMl5BanBnXkFtZTcwNzk1NjEzMQ@@._V1_.jpg"
	},
	{
  		:name => "Erika Christensen",
		:bio => "Erika Jane Christensen was born in 1982 in Seattle, Washington, to Kathy (Hendricks), a construction manager, and Steven Christensen, a human resources executive and insurance worker. She was raised in the suburban outskirts of Los Angeles, California. At age 12, Erika knew that she was going to be an actress.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5Njk4MTM0NV5BMl5BanBnXkFtZTcwMjI3NDUwOA@@._V1_UY317_CR11,0,214,317_AL_.jpg"
	},
	{
  		:name => "Faye Dunaway",
		:bio => "She was one of the hottest actresses in the 1970s playing neurotic, highly driven women with sex appeal. Life in the 1990s has not been as good. In a much-publicized incident, she was dropped as the lead in the Broadway musical \"Sunset Boulevard,\" and her attempt at starring in a television comedy was an unmitigated bomb.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4OTU5MDY0OV5BMl5BanBnXkFtZTYwNTc0MTM1._V1_UY317_CR13,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Ghost In The Shell").actors.create!([
	{
  		:name => "Scarlett Johansson",
		:bio => "Scarlett Ingrid Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen. She has a sister, Vanessa Johansson, who is also an actress, a brother, Adrian, a twin brother, Hunter Johansson, born three minutes after her.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_UY317_CR23,0,214,317_AL_.jpg"
	},
	{
  		:name => "Pilou Asbæk",
		:bio => "Pilou Asbæk graduated from The Danish National School of Performing Arts in 2008. Same year he played the leading role in Niels Arden Oplev's drama WORLDS APARTS. In 2010 he had his breakthrough as the inmate Rune in Lindholm & Noer's prison drama R for which he won the price for Best actor at The Danish Critic Association Award", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNTEzMjUxODc5M15BMl5BanBnXkFtZTcwMjkwMjgxNA@@._V1_UY317_CR31,0,214,317_AL_.jpg"
	},
	{
  		:name => "Takeshi Kitano",
		:bio => "Takeshi Kitano originally studied to become an engineer, but was thrown out of school for rebellious behavior. He learned comedy, singing and dancing from famed comedian Senzaburô Fukami.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMjA4ODgzM15BMl5BanBnXkFtZTYwNzc3MjI0._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Zookeeper's Wife").actors.create!([
	{
  		:name => "Jessica Chastain",
		:bio => "Jessica Michelle Chastain was born in Sacramento, California, and was raised in a middle-class household in a northern California suburb. Her mother, Jerri Chastain, is a vegan chef whose family is originally from Kansas, and her stepfather is a fireman. She discovered dance at the age of nine and was in a dance troupe by age thirteen.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU1MDM5NjczOF5BMl5BanBnXkFtZTcwOTY2MDE4OA@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Johan Heldenbergh",
		:bio => "Johan Heldenbergh was born on May 11, 1967 in Wilrijk, Flanders, Belgium. He is an actor and writer, known for The Broken Circle Breakdown (2012), The Zookeeper's Wife (2017) and Moscow, Belgium (2008). He is married to Joke Devynck. They have three children.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMzAyNTU2MmItNmUyNy00YTFkLTlmYWUtZjNlNTNiZGE5ZTRhL2ltYWdlXkEyXkFqcGdeQXVyNzQyNTcxMQ@@._V1_UY317_CR15,0,214,317_AL_.jpg"
	},
	{
  		:name => "Daniel Brühl",
		:bio => "Daniel Brühl was born in Barcelona, Spain. His father was German TV director Hanno Brühl (1937-2010), who was born in São Paulo, Brazil. His Spanish mother was a teacher. He also has a brother and a sister, Oliver and Miriam. Shortly after his birth, his family moved to Cologne, Germany, where he grew up and attended the Dreikönigsgymnasium.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjQxNzA0NjYxMF5BMl5BanBnXkFtZTgwOTQyNDU5NDE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Shack").actors.create!([
	{
  		:name => "Sam Worthington",
		:bio => "Samuel Henry John Worthington was born August 2, 1976 in Surrey, England. His parents, Jeanne (Martyn) and Ronald Worthington, a power planet employee, moved the family to Australia when he was six months old, and raised him and his sister Lucinda in Warnbro, a suburb of Perth, Western Australia.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5NTMyMjIwMV5BMl5BanBnXkFtZTcwNTMyNjYwMw@@._V1_UY317_CR6,0,214,317_AL_.jpg"
	},
	{
  		:name => "Octavia Spencer",
		:bio => "Spencer is a native of Montgomery, Alabama, which she claims is the proverbial buckle of the Bible belt. She's the sixth of seven siblings and holds a BS in Liberal Arts from Auburn University. A \"closet\" lover of acting, this practical Alabamian knew that she'd someday work in the film industry.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTg0MjcwMjcxNl5BMl5BanBnXkFtZTcwMjkwODg0Ng@@._V1_UY317_CR11,0,214,317_AL_.jpg"
	},
	{
  		:name => "Tim McGraw",
		:bio => "Three-time Grammy Award winner Tim McGraw, the son of former major league reliever Tug McGraw, is a country music superstar who has sold over 40 million albums. Eleven of his album have debuted at No. 1 on the Billboard country album chart and he has had 21 hit No. 1 singles on the Billboard Hot Country 100 chart.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjcyNTkyOTY4OV5BMl5BanBnXkFtZTcwODI2NzQ5Mg@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Hidden Figures").actors.create!([
	{
  		:name => "Taraji P. Henson",
		:bio => "Taraji P. Henson was born on September 11, 1970 in Washington, District of Columbia, USA as Taraji Penda Henson. She is an actress and producer, known for Hidden Figures (2016), Person of Interest (2011) and The Curious Case of Benjamin Button (2008).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc4NDQ2MTUwMl5BMl5BanBnXkFtZTcwODA2NDY3NQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Janelle Monáe",
		:bio => "Janelle Monáe is an American musical recording artist, actress, & model signed to her own imprint, Wondaland Arts Society, and Atlantic Records. In 2010, Monáe released her first full-length studio album, The ArchAndroid. In March 2012, \"We Are Young\" by Fun., on which Monáe appears as a guest vocalist, reached number 1 on the Billboard Hot 100.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTEyMDA1MzE0NjdeQTJeQWpwZ15BbWU3MDM0NzA4MDQ@._V1_UY317_CR16,0,214,317_AL_.jpg"
	},
	{
  		:name => "Kevin Costner",
		:bio => "Kevin Michael Costner was born on January 18, 1955 in Lynwood, California, the third child of Bill Costner, a ditch digger and ultimately an electric line servicer for Southern California Edison, and Sharon Costner (née Tedrick), a welfare worker. His older brother, Dan, was born in 1950. A middle brother died at birth in 1953.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ0MDU1OTEyNF5BMl5BanBnXkFtZTgwNjI0MTk2MDE@._V1_UY317_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "T2: Trainspotting").actors.create!([
	{
  		:name => "Ewan McGregor",
		:bio => "Ewan Gordon McGregor was born on March 31, 1971 in Perth, Perthshire, Scotland, to Carol Diane (Lawson) and James Charles McGregor, both teachers. His uncle is actor Denis Lawson. He was raised in Crieff. At age 16, he left Morrison Academy to join the Perth Repertory Theatre.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTg1MjQ0MDg0Nl5BMl5BanBnXkFtZTcwNjYyNjI5Mg@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Robert Carlyle",
		:bio => "Robert Carlyle was born in Maryhill, Glasgow, Scotland, to Elizabeth, a bus company employee, and Joseph Carlyle, a painter and decorator. He was raised by his father after his mother left him when he was four. At the age of 21, after reading Arthur Miller's \"The Crucible,\" he enrolled in acting classes at the Glasgow Arts Centre.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2Njc1MjgyOF5BMl5BanBnXkFtZTcwMjY2NTAwNw@@._V1_UY317_CR11,0,214,317_AL_.jpg"
	},
	{
  		:name => "Steven Robertson",
		:bio => "Born in Vidlin in the Shetland Islands, Steven Robertson overcame severe dyslexia to be named Student of the Year at Fife College in Kirkcaldy in recognition of his 'journey travelled'. After completing college he came to London to study drama at the Guildhall acting school, becoming the first Shetlander to be accepted there.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE4MzI0M15BMl5BanBnXkFtZTYwMTMyMzI3._V1_UY317_CR128,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Lion").actors.create!([
	{
  		:name => "Sunny Pawa",
		:bio => "Sunny Pawar is an actor, known for Lion (2016), Love Sonia (2017) and Drive (2018).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE2NDcyMDM2MF5BMl5BanBnXkFtZTgwNzQ1NjYzMTI@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Abhishek Bharate",
		:bio => "Abhishek Bharate is an actor, known for Lion (2016) and Love Sonia (2017).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZjA1NzExZjgtZWVmMS00Mzk3LTg2MzItMzgwZjBhMmM4NjVlXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY317_CR130,0,214,317_AL_.jpg"
	},
	{
  		:name => "Priyanka Bose",
		:bio => "Priyanka Bose is an Indian stage & film actor best know for her performances in 'Gangor - A film by Italo Spinelli: Based On political activist Mahashweta Devi's - Breast Stories'. In the film she essays the trials & tribulations of protagonist Gangor - a tribal woman who questions unjust police violence in West Bengal.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzNjA1ODc2NF5BMl5BanBnXkFtZTgwNzY3NDc2NjE@._V1_UY317_CR8,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "La La Land").actors.create!([
	{
  		:name => "Ryan Gosling",
		:bio => "Canadian actor Ryan Gosling is the first person born in the 1980s to have been nominated for the Best Actor Oscar (for Half Nelson (2006)). He was born Ryan Thomas Gosling on November 12, 1980, in London, Ontario, Canada. He is the son of Donna (Wilson), a secretary, and Thomas Ray Gosling, a traveling salesman.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQzMjkwNTQ2OF5BMl5BanBnXkFtZTgwNTQ4MTQ4MTE@._V1_UY317_CR18,0,214,317_AL_.jpg"
	},
	{
  		:name => "Emma Stone",
		:bio => "Emily Jean \"Emma\" Stone was born in Scottsdale, Arizona, to Krista (Yeager), a homemaker, and Jeffrey Charles Stone, a contracting company founder and CEO. She is of Swedish (from her paternal grandfather), English, German, Scottish, and Irish descent.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjI4NjM1NDkyN15BMl5BanBnXkFtZTgwODgyNTY1MjE@._V1.._UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Terry Walters",
		:bio => "Terry Walters is an actress and producer, known for La La Land (2016), Santa Clarita Diet (2017) and Beginners (2010).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BODUyOTU2NjI0N15BMl5BanBnXkFtZTgwNzA1MDAwODE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Personal Shopper").actors.create!([
	{
  		:name => "Kristen Stewart",
		:bio => "Though most famous for her role as Isabella \"Bella\" Swan in The Twilight (2008) Saga, Kristen Stewart has been a working actor since her early years in Los Angeles, California, where she was born. Her parents, John Stewart and Jules Stewart, both work in film and television. Her mother is Australian.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQxMjUyOTY0Ml5BMl5BanBnXkFtZTcwNjI2MjA2Mw@@._V1_UY317_CR7,0,214,317_AL_.jpg"
	},
	{
  		:name => "Lars Eidinger",
		:bio => "Lars Eidinger was born on January 21, 1976 in Berlin, Germany. He is an actor and composer, known for Clouds of Sils Maria (2014), Everyone Else (2009) and Personal Shopper (2016). He is married to Ulrike Eidinger. They have one child.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjgwMzgxNjQ2NF5BMl5BanBnXkFtZTgwMjQ4MjY4MTE@._V1_UY317_CR16,0,214,317_AL_.jpg"
	},
	{
  		:name => "Anders Danielsen Lie",
		:bio => "Anders Danielsen Lie was born on January 1, 1979 in Oslo, Norway. He is an actor, known for Oslo, August 31st (2011), Reprise (2006) and Herman (1990).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjI0MDU2NTE3N15BMl5BanBnXkFtZTcwODI1Mjg3Nw@@._V1_UY317_CR186,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Before I Fall").actors.create!([
	{
  		:name => "Zoey Deutch",
		:bio => "A vibrant, diversely talented, and charming actress, Zoey Deutch is steadily building on her body of work with dynamic roles alongside notable actors and filmmakers.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNmRmZGQ5YjMtZGZmOC00ZDMzLTg0MzEtNTVlNDRlMDQwYWJmL2ltYWdlXkEyXkFqcGdeQXVyMjMwNzU2MjM@._V1_UY317_CR22,0,214,317_AL_.jpg"
	},
	{
  		:name => "Halston Sage",
		:bio => "A charming and striking actress and model, Halston Sage continues to gain fame, working alongside notable actors and filmmakers. She was most recently seen in the film Before I Fall (2017), based on the 2010 novel of the same name by Lauren Oliver.", 
	 	:image_url => ""
	},
	{
  		:name => "Logan Miller",
		:bio => "Logan Miller was born on February 18, 1992 in Colorado, USA. He is an actor, known for Scouts Guide to the Zombie Apocalypse (2015), Ultimate Spider-Man (2012) and I'm in the Band (2009).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUzOTM2NTY2N15BMl5BanBnXkFtZTgwODAwMTczODE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Beauty And The Beast").actors.create!([
	{
  		:name => "Emma Watson",
		:bio => "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_UY317_CR21,0,214,317_AL_.jpg"
	},
	{
  		:name => "Dan Stevens",
		:bio => "Dan Stevens was born at Croydon in Surrey on 10th October 1982. His parents are teachers. He was educated at Tonbridge School and trained in acting at the National Youth Theatre of Great Britain. He studied English Literature at Emmanuel College, Cambridge. Whilst he was a Cambridge undergraduate, he acted in several student drama productions.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY0NTY5OTI2MF5BMl5BanBnXkFtZTgwNDkzMzIxMzE@._V1_UY317_CR7,0,214,317_AL_.jpg"
	},
	{
  		:name => "Luke Evans",
		:bio => "Luke George Evans was born in Pontypool, Wales, and grew up in Aberbargoed, in the south of Wales. He is the son of Yvonne (Lewis) and David Evans. He moved to Cardiff at the age 17. He then won a scholarship to the London Studio Centre, and graduated in 2000. He starred in many of London's West End theatre productions.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNDU1MDI2OTUyNV5BMl5BanBnXkFtZTcwNTA1OTY1OQ@@._V1_UY317_CR12,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Boss Baby").actors.create!([
	{
  		:name => "Alec Baldwin",
		:bio => "Raven-haired, suavely handsome and prolific actor Alec Baldwin was born on April 3, 1958 in Massapequa, New York, and is the oldest, and easily the best-known, of the four Baldwin brothers in the acting business (the others are Stephen Baldwin, William Baldwin and Daniel Baldwin). ", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE1Njg4MzY3M15BMl5BanBnXkFtZTcwNTY3MjE3NA@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Steve Buscemi",
		:bio => "Steve Buscemi was born in Brooklyn, New York, to Dorothy (Wilson), a restaurant hostess, and John Buscemi, a sanitation worker. He is of Italian (father) and English, Dutch, and Irish (mother) descent. He became interested in acting during his last year of high school. After graduating, he moved to Manhattan to study acting with John Strasberg. ", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BODc0NTU3NDA4M15BMl5BanBnXkFtZTcwNDkxNzQxNA@@._V1_UY317_CR11,0,214,317_AL_.jpg"
	},
	{
  		:name => "Jimmy Kimmel",
		:bio => "Jimmy Kimmel was born on November 13, 1967 in Brooklyn, New York City, New York, USA as James Christian Kimmel. He is a producer and writer, known for Jimmy Kimmel Live! (2003), The Man Show (1999) and Win Ben Stein's Money (1997). He has been married to Molly McNearney since July 13, 2013. They have one child. ", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQzMjU5MjgzNV5BMl5BanBnXkFtZTcwMzYxODk3OQ@@._V1_UY317_CR12,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Lego Batman Movie").actors.create!([
	{
  		:name => "Will Arnett",
		:bio => "Will Arnett is a Canadian-American actor, voice actor, and comedian. He played George Oscar \"Gob\" Bluth II in the Fox series, Arrested Development (2003). He also appeared in films, such as The Lego Movie (2014), Teenage Mutant Ninja Turtles (2014), Teenage Mutant Ninja Turtles: Out of the Shadows (2016) and The LEGO Batman Movie (2017).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNDkzMjEzNDMyN15BMl5BanBnXkFtZTcwNTk3ODEyOQ@@._V1_UY317_CR13,0,214,317_AL_.jpg"
	},
	{
  		:name => "Michael Cera",
		:bio => "Canadian actor Michael Cera was born in Brampton, Ontario, to parents who worked for Xerox. His mother, Linda, who is from Quebec, has English, Irish, Scottish, and Dutch ancestry, and his father, Luigi Cera, is Sicilian. Michael is the middle child between two sisters.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNTgyNDgxMjUyOV5BMl5BanBnXkFtZTcwMDYxNzY1OQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Rosario Dawson",
		:bio => "This stunning and resourceful actress has been primarily a film player thus far. Only recently has she been opening herself up more to doing television (the series Gemini Division (2008), which she executive-produced), and animated voice-overs.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk1NjQ3NTYyNF5BMl5BanBnXkFtZTcwODU4NzQ4NQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "My Life As A Zucchini").actors.create!([
	{
  		:name => "Natacha Koutchoumov",
		:bio => "Natacha Koutchoumov was born in 1975 in Geneva, Geneva, Switzerland. She is an actress, known for Stealth (2006), Garçon stupide (2004) and My Life as a Zucchini (2016).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUzNDg4NjYwM15BMl5BanBnXkFtZTcwMTg0OTM4Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Susanne Blakeslee",
		:bio => "Susanne Blakeslee was born on January 27, 1956 in Los Angeles, California, USA as Susan Anne Blakeslee. She is an actress, known for The Fairly OddParents (2001), Tangled (2010) and Shrek the Third (2007).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3NzkzMDIxNl5BMl5BanBnXkFtZTYwMDIwMDk1._V1_UY317_CR127,0,214,317_AL_.jpg"
	},
	{
  		:name => "Will Forte",
		:bio => "Forte was age 32 before he came to the public's attention on Saturday Night Live (1975), but had been working in comedy since 1997. Forte is the son of artist Patricia (Stivers) and financial broker Orville Willis Forte III (divorced), and has one older sister, Michelle.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BODE5ODkwNTg4Nl5BMl5BanBnXkFtZTcwODcwMTY1OQ@@._V1_UY317_CR13,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Smurfs: The Lost Villiage").actors.create!([
	{
  		:name => "Demi Lovato",
		:bio => "Born in 1992 in Albuquerque, New Mexico, Demi Lovato started out as a child actor on Barney & Friends. In 2007, Demi Lovato got a part on a short Disney Channel show called As the Bell Rings, and then she landed the starring role of the movie Camp Rock.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNzMxNDQ3NTEwN15BMl5BanBnXkFtZTcwNDM5NjM0Mg@@._V1_UY317_CR8,0,214,317_AL_.jpg"
	},
	{
  		:name => "Rainn Wilson",
		:bio => "Rainn Wilson lives in Los Angeles with his wife, fiction writer Holiday Reinhorn (Big Cats), and his son, Walter McKenzie Wilson who was born in 2004. He grew up in Seattle, Washington but graduated from New Trier H.S. in Winnetka, Illinois.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwNDM1MjQ0M15BMl5BanBnXkFtZTcwNTkzNDczMg@@._V1_UY317_CR13,0,214,317_AL_.jpg"
	},
	{
  		:name => "Joe Manganiello",
		:bio => "Joe Manganiello is an American actor. He was born in Pittsburgh, Pennsylvania, to Susan (Brachanow) and Charles John Manganiello, and has a younger brother, Nicholas. His father is of Italian descent and his mother has German/Austrian/Croatian and Armenian ancestry. Joe was raised in Mount Lebanon and attended Mount Lebanon high school.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjI3NTkyMDYyOF5BMl5BanBnXkFtZTgwNjkyNzc4OTE@._V1_UY317_CR12,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Spark: A Space Tale").actors.create!([
	{
  		:name => "Susan Sarandon",
		:bio => "Susan Sarandon was born Susan Abigail Tomalin in New York City, New York, to Lenora Marie (Criscione) and Phillip Leslie Tomalin, a television producer and advertising executive. She is of Italian (mother) and English, Irish, Welsh, and German (father) descent.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTg4ODMzMDUzNF5BMl5BanBnXkFtZTcwNzY4NzQwMw@@._V1_UY317_CR6,0,214,317_AL_.jpg"
	},
	{
  		:name => "Patrick Stewart",
		:bio => "Sir Patrick Stewart was born in Mirfield, Yorkshire, England, to Gladys (Barrowclough), a textile worker and weaver, and Alfred Stewart, who was in the army. He was a member of various local drama groups from about age 12.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0MzU5ODQ5OF5BMl5BanBnXkFtZTYwODIwODk1._V1_UY317_CR4,0,214,317_AL_.jpg"
	},
	{
  		:name => "Jessica Biel",
		:bio => "Jessica Biel, with her good looks and talent, has become one of Hollywood's most sought-out actresses. She was born in Ely, Minnesota, to Kimberly (Conroe) and Jonathan Edward Biel, who is a business consultant and GM worker. Biel was raised in Boulder, Colorado. She is of Hungarian Jewish, Danish, English, and German descent.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk5MDY2NzMwMl5BMl5BanBnXkFtZTcwNzIxNTUxNw@@._V1_UY317_CR10,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Leap!").actors.create!([
	{
  		:name => "",
		:bio => "", 
	 	:image_url => ""
	},
	{
  		:name => "",
		:bio => "", 
	 	:image_url => ""
	},
	{
  		:name => "",
		:bio => "", 
	 	:image_url => ""
	}

	])
Movie.find_by(:title => "Rock Dog").actors.create!([
	{
  		:name => "Luke Wilson",
		:bio => "Handsome Texan Luke Cunningham Wilson was born in Dallas in 1971, to Irish-American parents originally from Massachusetts. The son of Laura (Cunningham), a photographer, and Robert Andrew Wilson, an advertising executive, he was raised with two brothers, Owen Wilson (the middle one) and Andrew Wilson (the eldest one).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTE3MjYxNDk4Nl5BMl5BanBnXkFtZTcwMDQ5OTQzMw@@._V1_UY317_CR1,0,214,317_AL_.jpg"
	},
	{
  		:name => "Eddie Izzard",
		:bio => "Best-known for his surreal and digressive stand-up, British comedian and actor Eddie Izzard was born on February 7, 1962, in Aden, Yemen, where his English parents -- Dorothy Ella, a nurse and midwife, and Harold John Izzard, an accountant -- worked for British Petroleum.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTIxNzM0OF5BMl5BanBnXkFtZTcwNTMwMzcwMg@@._V1_UY317_CR10,0,214,317_AL_.jpg"
	},
	{
  		:name => "J.K. Simmons",
		:bio => "J.K. Simmons is an American actor. He was born Jonathan Kimble Simmons in Grosse Pointe, Michigan, to Patricia (Kimble), an administrator, and Donald William Simmons, a music teacher. He attended the Ohio State University, Columbus, OH; University of Montana, Missoula, MT (BA in Music).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMzg2NTI5NzQ1MV5BMl5BanBnXkFtZTgwNjI1NDEwMDI@._V1_UY317_CR23,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Outcasts").actors.create!([
	{
  		:name => "Eden Sher",
		:bio => "Eden was born December 26, 1991. She was raised in Los Angeles, California, where she resides with her family. Eden began acting at the age of 8, participating in school plays and local theater. She has done numerous commercials, including voice-over work.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2MDY5MTM5NF5BMl5BanBnXkFtZTgwODcyODYzNTE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Peyton List",
		:bio => "Peyton is well-known for her roles on the hit Disney series Jessie (2011) and Fox's Diary of a Wimpy Kid (2010) film franchise. List most recently wrapped the teen comedy, The Outcasts (2017), for director Peter Hutchings. Her other feature credits include Fox 2000's 27 Dresses (2008) and Summit's Remember Me (2010).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwNzA0OTM1MV5BMl5BanBnXkFtZTgwNjE2MzY3NDE@._V1_UY317_CR2,0,214,317_AL_.jpg"
	},
	{
  		:name => "Victoria Justice",
		:bio => "Victoria Dawn Justice, born February 19, 1993, is an American actress and singer. She debuted as an actress at the age of ten and has since appeared in several films and television series, including the Nickelodeon series, Zoey 101 (2005) and Victorious (2010).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUzNDg2NDMzOV5BMl5BanBnXkFtZTcwNTIyODg2MQ@@._V1_UY317_CR8,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Get Out").actors.create!([
	{
  		:name => "Daniel Kaluuya",
		:bio => "Daniel Kaluuya was born in 1989 in London, England. He is an actor and writer, known for Sicario (2015), Get Out (2017) and Johnny English Reborn (2011).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTk1MzgzOTg5OV5BMl5BanBnXkFtZTcwNDQ4NjMxOA@@._V1_UY317_CR1,0,214,317_AL_.jpg"
	},
	{
  		:name => "Allison Williams",
		:bio => "Allison Williams, born April 13, 1988, is an American actress, comedian, and singer. She is best known for her role as \"Marnie Michaels\" on the HBO comedy-drama series, Girls (2012).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjM0MjI5NDMwOF5BMl5BanBnXkFtZTgwOTgwMzY5OTE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Catherine Keener",
		:bio => "Catherine Keener is an American actress, Oscar-nominated for her roles in the independent films Being John Malkovich (1999) and Capote (2005). Acclaimed in her community for her quirky roles in independent film and mainstream such as The 40-Year-Old Virgin (2005), Keener got her start as a casting director in New York City.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjIwMzQ1Mzg1MF5BMl5BanBnXkFtZTcwNTE4MTU5MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Chips").actors.create!([
	{
  		:name => "Michael Peña",
		:bio => "Peña was born and raised in Chicago, to Nicolasa, a social worker, and Eleuterio Peña, who worked at a button factory. His parents were originally from Mexico, his mother from Charcas in San Luis Potosí and his father from Villa Purificación in Jalisco.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTczNzcxNTE5NV5BMl5BanBnXkFtZTcwOTE4MTMzMQ@@._V1_UY317_CR15,0,214,317_AL_.jpg"
	},
	{
  		:name => "Dax Shepard",
		:bio => "Dax Randall Shepard was born in 1975 in Milford, a suburb of Detroit, Michigan, to Laura (LaBo), who worked at GM, and Dave Robert Shepard, Sr., a car salesman. His mother is of French-Canadian and Belgian descent. With both his parents working in the automotive industry, Dax's first love was cars.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTQ5Mzg5OTg5N15BMl5BanBnXkFtZTcwODI2MjA0OQ@@._V1_UY317_CR7,0,214,317_AL_.jpg"
	},
	{
  		:name => "Jessica McNamee",
		:bio => "Jessica McNamee was born in June 1986 in Sydney, Australia. She is an actress, known for The Vow (2012), The Loved Ones (2009) and Packed to the Rafters (2008).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAzMTU4OTI4Ml5BMl5BanBnXkFtZTcwNzAzNDczNw@@._V1_UY317_CR15,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Last Word").actors.create!([
	{
  		:name => "Shirley MacLaine",
		:bio => "Shirley MacLaine was born Shirley MacLean Beaty in Richmond, Virginia. Her mother, Kathlyn Corinne (MacLean), was a drama teacher from Nova Scotia, Canada, and her father, Ira Owens Beaty, a professor of psychology and real estate agent, was from Virginia. Her brother, Warren Beatty, was born on March 30, 1937.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0MTE5MjQ1MF5BMl5BanBnXkFtZTYwMzU2MDg1._V1_UY317_CR2,0,214,317_AL_.jpg"
	},
	{
  		:name => "Amanda Seyfried",
		:bio => "Amanda Seyfried was born and raised in Allentown, Pennsylvania, to Ann (Sander), an occupational therapist, and Jack Seyfried, a pharmacist. She is of German, and some English and Scottish, ancestry. She began modeling when she was eleven, and acted in high school productions as well as taking singing lessons.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjUyODkwODUyMF5BMl5BanBnXkFtZTcwMzU3MjYxMw@@._V1_UY317_CR33,0,214,317_AL_.jpg"
	},
	{
  		:name => "Thomas Sadoski",
		:bio => "Thomas Sadoski was born on 1st July 1976 in Bethany, Connecticut. In 1980, he moved with his family to College Station, Texas. He has been in numerous plays Off-Broadway, and many regional theatres, including the Williamstown Theatre Festival.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNjU2Mjg0NTI3OV5BMl5BanBnXkFtZTgwNTgwODE1NDE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Wilson").actors.create!([
	{
  		:name => "Woody Harrelson",
		:bio => "Academy Award-nominated and Emmy Award-winning actor Woodrow Tracy Harrelson was born on July 23, 1961 in Midland, Texas, to Diane Lou (Oswald) and Charles Harrelson. He grew up in Lebanon, Ohio, and, after receiving degrees in theater arts and English from Hanover College, had a brief stint in New York theater.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU3NDc2ODc4MF5BMl5BanBnXkFtZTcwODk2MzAyMg@@._V1_UY317_CR1,0,214,317_AL_.jpg"
	},
	{
  		:name => "Shaun Brown",
		:bio => "Shaun Brown is an American actor born on March Air Force Base in Riverside, California. Growing up Shaun Brown wanted to be a heart surgeon but when he was cast in his first musical, \"West Side Story\", he instantly fell in love with acting and continued exploring this new love with many high school musical productions.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZmVlZTQzOGYtMzVhNi00NTBjLTkwZTItYmMxNzI5YmNhNDNhL2ltYWdlXkEyXkFqcGdeQXVyMjA3OTE5Nzk@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Brett Gelman",
		:bio => "Brett Gelman is an actor and writer, known for 30 Minutes or Less (2011), The Other Guys (2010) and Jobs (2013).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU3MjIxMjQ2Ml5BMl5BanBnXkFtZTgwNzQyODA3NjE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Phillauri").actors.create!([
	{
  		:name => "Anushka Sharma",
		:bio => "Anushka Sharma was born on 1 May 1988 in Ayodhya, Uttar Pradesh. Her father, Colonel Ajay Kumar Sharma, is an army officer, and her mother, Ashima Sharma, is a homemaker. Her father is a native of Uttar Pradesh, while her mother is a Garhwali. Her elder brother is film producer Karnesh Sharma, who earlier served in the Merchant Navy.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNGM5YmYwNjUtNzQyYS00OGY0LTljZDAtMDNiMjhiOTFiMzRiXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_UY317_CR3,0,214,317_AL_.jpg"
	},
	{
  		:name => "Diljit Dosanjh",
		:bio => "Diljit Dosanjh is known for his work on Udta Punjab (2016), Punjab 1984 (2014) and Jatt & Juliet (2012).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODg1NzQwM15BMl5BanBnXkFtZTgwMDU4ODEzOTE@._V1_UY317_CR6,0,214,317_AL_.jpg"
	},
	{
  		:name => "Suraj Sharma",
		:bio => "Suraj was born and raised in New Dehli, India. His mother is an economist and his father is a software engineer. He has a brother and sister who are both younger than he. Was one of 3,000 to audition for the role of Pi in Life of Pi (2012) and he attended the audition only because his younger brother asked him to.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjI0MDU5NTM1OF5BMl5BanBnXkFtZTcwNDQ0MDYwOQ@@._V1_UY317_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "For Here Or To Go?").actors.create!([
	{
  		:name => "Ali Fazal",
		:bio => "Ali Fazal is an actor, known for Furious 7 (2015), 3 Idiots (2009) and Bang Baaja Baaraat (2015).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjQzMjI3MjA4NF5BMl5BanBnXkFtZTgwNjAyODA1MDI@._V1_UY317_CR28,0,214,317_AL_.jpg"
	},
	{
  		:name => "Melanie Chandra",
		:bio => "Melanie Chandra was born on February 28, 1984 in Park Ridge, Illinois, USA as Melanie Kannokada. She is an actress and producer, known for Code Black (2015), The Brink (2015) and Brown Nation (2016).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5OTk4OTI5Nl5BMl5BanBnXkFtZTgwMzU4NDQ5NTE@._V1_UY317_CR4,0,214,317_AL_.jpg"
	},
	{
  		:name => "Omi Vaidya",
		:bio => "Omi Vaidya is an actor and editor, known for 3 Idiots (2009), Desi Boyz (2011) and Dil Toh Baccha Hai Ji (2011). He has been married to Minal Patel since August 22, 2009.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNjE2MjYzMjg0NV5BMl5BanBnXkFtZTcwMTYwNzMxOA@@._V1_UY317_CR7,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Paterson").actors.create!([
	{
  		:name => "Adam Driver",
		:bio => "Adam Douglas Driver was born in San Diego, California. His mother, Nancy (Needham) Wright, is a paralegal from Mishawaka, Indiana, and his father, Joe Douglas Driver, who has deep roots in the American South, is from Little Rock, Arkansas.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM0OTA0NjU0MV5BMl5BanBnXkFtZTcwMTUzNjk3Nw@@._V1_UY317_CR4,0,214,317_AL_.jpg"
	},
	{
  		:name => "Golshifteh Farahani",
		:bio => "Golshifteh started her acting career in theater at the age of 6 and has always kept a strong link with theater, but it was at the age of 14 that she acted in her first film The Pear Tree (1998), for which she won the prize for the Best Actress from the international section of the Fajr film festival.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MDAwMDUzNV5BMl5BanBnXkFtZTgwMjQ4NDE2MDE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Nellie",
		:bio => "Broadway animal trainer William Berloni discovered Nellie at the Humane Society of New York in 2008 at 10 months of age. He worked with Nellie and she became a regular character in the national road and regional touring shows of \"Legally Blonde: The Musical.\"", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjk3NDAyMDYwNF5BMl5BanBnXkFtZTgwNjk2Mzc5OTE@._V1_UY317_CR130,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Carrie Pilby").actors.create!([
	{
  		:name => "Bel Powley",
		:bio => "Bel Powley was born on March 7, 1992 in London, England. She is an actress, known for The Diary of a Teenage Girl (2015), Carrie Pilby (2016) and A Royal Night Out (2015).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZDg4ZDYwMzgtMWE2Yi00N2M3LTkzYWYtMmI0OGYzMWQwNGFhXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR2,0,214,317_AL_.jpg"
	},
	{
  		:name => "Nathan Lane",
		:bio => "Nathan Lane was born on February 3, 1956 in Jersey City, New Jersey, USA as Joseph Lane. He is an actor, known for The Lion King (1994), The Birdcage (1996) and The Producers (2005). He has been married to Devlin Elliott since November 17, 2015.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTEwMTc1MjQ3NzFeQTJeQWpwZ15BbWU3MDEzNjEwODE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Gabriel Byrne",
		:bio => "Byrne was the first of six children, born in Dublin, Ireland. His father was a cooper and his mother a hospital worker. He was raised Catholic and educated by the Irish Christian Brothers. He spent five years of his childhood in a seminary training to be a Catholic priest.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzE1ODA1Ml5BMl5BanBnXkFtZTcwODY3MjU5MQ@@._V1_UY317_CR19,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "20th Century Women").actors.create!([
	{
  		:name => "Annette Bening",
		:bio => "Annette Carol Bening was born on May 29, 1958 in Topeka, Kansas, the youngest of four children of Shirley (Ashley), a soloist and church singer, and Arnett Grant Bening, an insurance salesman. She is of German and British Isles ancestry. Her family moved to California when she was young, and she grew up there.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc4ODQ1ODM5Ml5BMl5BanBnXkFtZTcwOTU2NDk3OQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Elle Fanning",
		:bio => "Mary Elle Fanning was born on the 9th of April 1998 in Conyers, Georgia, USA, to Heather Joy (Arrington) and Steven J. Fanning. Her mother played professional tennis, and her father, now an electronics salesman, played minor league baseball. She is of German, Irish, English, French, and Channel Islander descent.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0ODA1MjY5M15BMl5BanBnXkFtZTcwNzcwMDYzOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Greta Gerwig",
		:bio => "Greta Celeste Gerwig is an American actress and filmmaker. She was born in Sacramento, California, to Christine Gerwig (née Sauer), a nurse, and Gordon Gerwig, a financial consultant and computer programmer. She has German, Irish, and English ancestry.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNDE5MTIxMTMzMV5BMl5BanBnXkFtZTcwMjMxMDYxOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Power Rangers").actors.create!([
	{
  		:name => "Dacre Montgomery",
		:bio => "Dacre was born in 1994 in Perth Western Australia. His mother is Canadian and his father is a New Zealander. At the time of his birth both of his parents were working in the film industry and he spent many hours during his childhood on film sets where he developed a love of acting.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZTM4ODlhMTEtMmEyNy00M2RhLWE3MDQtY2RhMGVmNjllM2VjXkEyXkFqcGdeQXVyMjQ0NDA5NDM@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Naomi Scott",
		:bio => "Naomi Scott was born in London, England. She first starting singing with the Bridge Church Youth Band and regularly performed in school musicals. Scott was eventually discovered by British pop star Kelle Bryan from the band Eternal who signed Naomi as a client. She then went to work with Xenomania.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BODQ2MDg0NzM4Ml5BMl5BanBnXkFtZTgwMjAzMDUxMDI@._V1_UY317_CR2,0,214,317_AL_.jpg"
	},
	{
  		:name => "RJ Cyler",
		:bio => "RJ Cyler, a native of Jacksonville, Florida, was born Ronald Cyler II, the youngest of three boys. RJ has always been an entertainer in some way or form. At the age of 12, he started a dance team with his older brother. In January 2012, RJ heard a commercial for open auditions in the Jacksonville area.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA3MDc4OTM4MF5BMl5BanBnXkFtZTgwODY0MDgxNDE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Kong: Skull Island").actors.create!([
	{
  		:name => "Tom Hiddleston",
		:bio => "Thomas William Hiddleston was born in Westminster, London, to English-born Diana Patricia (Servaes) and Scottish-born James Norman Hiddleston. His mother is a former stage manager, and his father, a scientist, was the managing director of a pharmaceutical company.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTEwNjE0Njg2MTReQTJeQWpwZ15BbWU3MDEyODM1ODc@._V1_UY317_CR1,0,214,317_AL_.jpg"
	},
	{
  		:name => "Samuel L. Jackson",
		:bio => "Samuel L. Jackson is an American producer and highly prolific actor, having appeared in over 100 films, including Die Hard with a Vengeance (1995), Unbreakable (2000), Shaft (2000), Formula 51 (2001), Black Snake Moan (2006), Snakes on a Plane (2006), and the Star Wars prequel trilogy (1999-2005), as well as the Marvel Cinematic Universe. ", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ1NTQwMTYxNl5BMl5BanBnXkFtZTYwMjA1MzY1._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Brie Larson",
		:bio => "Brie Larson has built an impressive career as an acclaimed television actress, rising feature film star and emerging recording artist. A native of Sacramento, Brie started studying drama at the early age of 6, as the youngest student ever to attend the American Conservatory Theater in San Francisco.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjM4MzAxOTI5NV5BMl5BanBnXkFtZTgwMzMzNTA4NjE@._V1_UY317_CR2,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Logan").actors.create!([
	{
  		:name => "Hugh Jackman",
		:bio => "Hugh Michael Jackman is an Australian actor, singer, multi-instrumentalist, dancer and producer. Jackman has won international recognition for his roles in major films, notably as superhero, period, and romance characters.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNDExMzIzNjk3Nl5BMl5BanBnXkFtZTcwOTE4NDU5OA@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Patrick Stewart",
		:bio => "Sir Patrick Stewart was born in Mirfield, Yorkshire, England, to Gladys (Barrowclough), a textile worker and weaver, and Alfred Stewart, who was in the army. He was a member of various local drama groups from about age 12.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0MzU5ODQ5OF5BMl5BanBnXkFtZTYwODIwODk1._V1_UY317_CR4,0,214,317_AL_.jpg"
	},
	{
  		:name => "Dafne Keen",
		:bio => "Dafne Keen was born as Daphne Keen Fernández. She is an actress, known for Logan (2017) and The Refugees (2014).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTY5OTY1NDg5M15BMl5BanBnXkFtZTgwNzk4NDM3MDI@._V1_UY317_CR146,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Belko Experiment").actors.create!([
	{
  		:name => "John Gallagher Jr.",
		:bio => "John Gallagher Jr. has appeared in several television programs, including The West Wing (1999), Law & Order: Special Victims Unit (1999), NYPD Blue (1993), Ed (2000), Love Monkey (2006), and Hallmark Hall of Fame's film The Flamingo Rising (2001). He played Jim Harper in Aaron Sorkin's The Newsroom (2012) which aired on HBO[16].", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk3MDQ2MzkxOV5BMl5BanBnXkFtZTcwNTEwMDEyOQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Tony Goldwyn",
		:bio => "Actor, director, producer Tony Goldwyn is taking multi-tasking to a new level. Currently starring as President Fitzgerald Grant in Shonda Rhimes' hit series \"Scandal,\" -- now in its fourth season -- Goldwyn has other projects in the works as well.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk3NTI3ODgwM15BMl5BanBnXkFtZTgwMjM2NTE2NzE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Adria Arjona",
		:bio => "Accustomed to airplanes and distant countries since she can recall, Adria Arjona was born in Puerto Rico and raised in Mexico City. Falling asleep in Guatemala and waking up in Argentina was not out of norm for her.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMGNlYTlmNTYtNGViOS00YjJkLWJhODQtNDA1OGFmODc3OGYzXkEyXkFqcGdeQXVyMzg1MzQxODU@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Rogue One").actors.create!([
	{
  		:name => "Felicity Jones",
		:bio => "Felicity Rose Hadley Jones is an English actress. Jones was born in Birmingham, West Midlands, and grew up in Bournville. Her parents met while working at the Wolverhampton Express and Star. Her father was a journalist while her mother was in advertising.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA0MTIwMzIyN15BMl5BanBnXkFtZTgwNDEyMzg1NDE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Diego Luna",
		:bio => "Diego Luna Alexander was born on December 29, 1979 in Mexico City, Mexico, to Alejandro Luna and Fiona Alexander, who worked as a costume designer. His father is Mexican and his mother was British, of Scottish and English descent. His mother died when Diego was only two, in a car accident. ", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTE0MjI2NDczMl5BMl5BanBnXkFtZTcwMTgwMDgyMg@@._V1_UY317_CR2,0,214,317_AL_.jpg"
	},
	{
  		:name => "Alan Tudyk",
		:bio => "Alan Tudyk was born in El Paso, Texas, and grew up in Plano, where he attended Plano Sr. High. In 1990, he went on to study drama at Lon Morris Jr. College. While there, he was awarded the Academic Excellence Award for Drama. He was also named Most Likely to Succeed and Sophomore Beau.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE0MzEwNDUxNV5BMl5BanBnXkFtZTcwNTE1MDAzOQ@@._V1_UY317_CR2,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "John Wick: Chapter 2").actors.create!([
	{
  		:name => "Keanu Reeves",
		:bio => "Keanu Charles Reeves, whose first name means \"cool breeze over the mountains\" in Hawaiian, was born September 2, 1964 in Beirut, Lebanon. He is the son of Patricia Taylor, a showgirl and costume designer, and Samuel Nowlin Reeves, a geologist.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNjUxNDcwMTg4Ml5BMl5BanBnXkFtZTcwMjU4NDYyOA@@._V1_UY317_CR15,0,214,317_AL_.jpg"
	},
	{
  		:name => "Riccardo Scamarcio",
		:bio => "Riccardo Scamarcio was born on November 13, 1979 in Andria, Puglia, Italy. He is an actor and producer, known for John Wick: Chapter 2 (2017), Loose Cannons (2010) and Burnt (2015).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwNzk5MjE5OF5BMl5BanBnXkFtZTcwODU2NTIzMQ@@._V1_UY317_CR51,0,214,317_AL_.jpg"
	},
	{
  		:name => "Ian McShane",
		:bio => "From a lawless, foul-mouthed saloon owner in \"Deadwood\" to a tough no-nonsense British gangster in \"Sexy Beast,\" Ian McShane has virtually cornered the market on playing rogues, villains and all-around bad asses.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNGUzYmJiMmQtNTRlNC00ZWEwLTgzY2ItZDMwZTdkMGE4Zjc0L2ltYWdlXkEyXkFqcGdeQXVyNzE0OTI2MzY@._V1_UY317_CR12,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Prison").actors.create!([
	{
  		:name => "Seok-Kyu Han",
		:bio => "Seok-Kyu Han is an actor, known for The Prison (2017).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNWI4ODhhOTktNTJiOC00OGZkLWI2MzUtYjQ2ZDYzNjMxYzA5XkEyXkFqcGdeQXVyNDIwOTAzMDM@._V1_UY317_CR130,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Life").actors.create!([
	{
  		:name => "Hiroyuki Sanada",
		:bio => "Hiroyuki Sanada was born on the 12th of October, 1960 in Tokyo. He made his film debut when he was 5 in Game of Chance (1965) (Shin'ichi Chiba played the lead role.) Sanada's father died when he was 11. Sanada joined Japan Action Club, organized and run by Sonny Chiba, when he was 12.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE2MzY0NTM1Ml5BMl5BanBnXkFtZTcwNzQzNzMyMw@@._V1_UY317_CR46,0,214,317_AL_.jpg"
	},
	{
  		:name => "Ryan Reynolds",
		:bio => "Ryan Rodney Reynolds was born on October 23, 1976 in Vancouver, British Columbia, Canada, the youngest of four children. His father, James Chester Reynolds, was a food wholesaler, and his mother, Tammy, worked as a retail-store saleswoman.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BOTI3ODk1MTMyNV5BMl5BanBnXkFtZTcwNDEyNTE2Mg@@._V1_UY317_CR6,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "The Blackcoat's Daughter").actors.create!([
	{
  		:name => "Emma Roberts",
		:bio => "Emma Roberts is the daughter of Oscar-nominated actor Eric Roberts, and the niece of Oscar-winner Julia Roberts. She was born in Rhinebeck, New York. Emma was a baby when her parents separated, and she grew up living with her mother, Kelly Cunningham. She was educated at Archer School for Girls in Los Angeles, California.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZjhmZTE0OTctYjUzMC00NGY0LWFhMDQtZmJiN2Y2Yzk4ODY4L2ltYWdlXkEyXkFqcGdeQXVyMTIxMTA0Ng@@._V1_UY317_CR20,0,214,317_AL_.jpg"
	},
	{
  		:name => "Kiernan Shipka",
		:bio => "Kiernan Shipka was born in Chicago, Illinois, to John Young Shipka, a real estate developer, and his wife, Erin Ann, a one-time queen of Chicago's St. Patrick's Day parade. The family relocated to Los Angeles when she was six to support her acting career.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE2MDYwMDg0MF5BMl5BanBnXkFtZTgwMjczNDg2NDE@._V1_UY317_CR61,0,214,317_AL_.jpg"
	},
	{
  		:name => "Lauren Holly",
		:bio => "Born in Bristol, Pennsylvania, the daughter of two college professors, Lauren grew up in the upstate New York town of Geneva. Her childhood was split between experiences that contrasted. She was privy to the shelter of growing up in a rural town and also exposed due to the erudite sophistication of her parents' academic careers.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjMxMDA0NDcyMl5BMl5BanBnXkFtZTgwNzE2ODkwODE@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])
Movie.find_by(:title => "Here Alone").actors.create!([
	{
  		:name => "Lucy Walters",
		:bio => "Lucy Walters is an actress, known for Power (2014), Shame (2011) and Here Alone (2016).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BMjI4NjA0MTE3Ml5BMl5BanBnXkFtZTgwNTg2MjUwODE@._V1_UY317_CR129,0,214,317_AL_.jpg"
	},
	{
  		:name => "Shane West",
		:bio => "Shane West was born Shannon Bruce Snaith in 1978 in Baton Rouge, Louisiana, the son of Leah (Launey), a lawyer, and Don Snaith, a drugstore owner.", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BNTYzMzMxMjcxNF5BMl5BanBnXkFtZTcwMjE2MDg0OQ@@._V1_UX214_CR0,0,214,317_AL_.jpg"
	},
	{
  		:name => "Gina Piersanti",
		:bio => "Gina Piersanti is an actress, known for It Felt Like Love (2013), Here Alone (2016) and The Water Detectives (2012).", 
	 	:image_url => "https://images-na.ssl-images-amazon.com/images/M/MV5BZTZkNjViM2EtNmViZS00ZjJlLTllOGMtNWM1NmVkYzc3MzMxXkEyXkFqcGdeQXVyMzY0MzI2NTU@._V1_UX214_CR0,0,214,317_AL_.jpg"
	}

	])

Location.find_by(:city => "Southampton").movies += [
	Movie.find(1),
	Movie.find(3),
	Movie.find(13),
	Movie.find(7),
	Movie.find(19),
	Movie.find(8)
]

Location.find_by(:city => "Easthampton").movies += [
	Movie.find(4),
	Movie.find(15),
	Movie.find(19),
	Movie.find(29),
	Movie.find(16),
	Movie.find(31)
]

Location.find_by(:city => "Sag Harbor").movies += [
	Movie.find(3),
	Movie.find(16),
	Movie.find(7),
	Movie.find(8),
	Movie.find(21),
	Movie.find(10)
]

Location.find_by(:city => "Montauk").movies += [
	Movie.find(3),
	Movie.find(12),
	Movie.find(6),
	Movie.find(9),
	Movie.find(32),
	Movie.find(19)
]

Location.find_by(:city => "Mattituck").movies += [
	Movie.find(13),
	Movie.find(11),
	Movie.find(20),
	Movie.find(21),
	Movie.find(14),
	Movie.find(34)
]

Location.find_by(:city => "Quogue").movies += [
	Movie.find(31),
	Movie.find(35),
	Movie.find(37),
	Movie.find(3),
	Movie.find(17),
	Movie.find(9)
]

Location.find_by(:city => "Stony Brook").movies += [
	Movie.find(24),
	Movie.find(34),
	Movie.find(15),
	Movie.find(14),
	Movie.find(18),
	Movie.find(12)
]

Location.find_by(:city => "Southold").movies += [
	Movie.find(17),
	Movie.find(9),
	Movie.find(8),
	Movie.find(3),
	Movie.find(38),
	Movie.find(2)
]

Location.find_by(:city => "Greenport").movies += [
	Movie.find(20),
	Movie.find(10),
	Movie.find(31),
	Movie.find(33),
	Movie.find(6),
	Movie.find(23)
]

Location.find_by(:city => "Water Mill").movies += [
	Movie.find(28),
	Movie.find(29),
	Movie.find(6),
	Movie.find(9),
	Movie.find(32),
	Movie.find(5)
]

Location.find(1).save
Location.find(2).save
Location.find(3).save
Location.find(4).save
Location.find(5).save
Location.find(6).save
Location.find(7).save
Location.find(8).save
Location.find(9).save
Location.find(10).save
