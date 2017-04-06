# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	{
  		:title => "",
		:description => "", 
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
		{:city =>"Easthampton", :zip => 01027},
		{:city =>"Sag Harbor", :zip => 11968},
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
