extends "res://Scene.gd"


var manager : Node2D;
var merax : Node2D;


# Called when the node enters the scene tree for the first time.
func _ready():
	var resp = build_scene(get_content());
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	merax = loaded_chars[1];
	manager.visible = true;
	merax.visible = true;
	character = {"Merax" : merax, "Manager" : manager}
	play_scene()

func get_content()->Dictionary:
	return {
		"scene": 1,
		"bg": "res://Asset/Scenes/scene1.png",
		"character": ["Manager", "Merax"],
		"content": {
		  "1": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "It was now time to get Mr.Big Bag Hotshot Merax on your side."
		  },
		  "2": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "This will likely be a suicide mission but you will definitely be doomed if the town was left defenceless without its protector."
		  },
		  "3": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "Merak surprisingly accepted your request to meet him."
		  },
		  "4": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "And so here you are sitting in actually his very cozily decorated office that is very different from how you imagined it to be like"
		  },
		  "5": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "",
			"body": " I apologise for making you wait for so long, I had some other urgent work to tend to."
		  },
		  "6": {
			"is_line": false,
			"body": "",
			"speaker": "",
			"mood": "",
			"choice": 1,
			"choices": [
			  {
				"body": "Was it a distraction for you to attack the town",
				"key": "merax",
				"value": 0,
				"jump": 7
			  },
			  {
				"body": "I don't mind, you did say it was urgent.",
				"key": "merax",
				"value": 5,
				"jump": 16
			  },
			  {
				"body": "It's fine. You did not leave me waiting for too long",
				"key": "merax",
				"value": 2,
				"jump": 20
			  }
			]
		  },
		  "7": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " This is quite presumptuous from you.\n"
		  },
		  "8": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " I have a schedule and today is my day off.\n"
		  },
		  "9": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Why would I work overtime if I won't get paid for it?\n"
		  },
		  "10": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " You get paid for doing this?\n"
		  },
		  "11": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " How do you think I get the money to do everything that I do?\n"
		  },
		  "12": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Either way, my other important affairs pertained to my cookies.\n"
		  },
		  "13": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " The temperature of the oven and the dough must be controlled to the decimal to ensure a perfectly crusty exterior yet soft interior while also leaving the chocolate chips molten yet solid.\n"
		  },
		  "14": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I see\u2026\n"
		  },
		  "15": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Oh forgive my ill manners, I forgot to give you a taste of them.\n",
			"jump": 26
		  },
		  "16": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I suppose urgent was a rather exaggerated choice of wording.\n"
		  },
		  "17": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " I was actually tending to these.\n"
		  },
		  "18": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Cookies?\n"
		  },
		  "19": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Indeed. I am quite fascinated by the activity called baking. It has actually been a hobby of mine ever since I was a little child.\n",
			"jump": 26
		  },
		  "20": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I'm glad to see you are not too annoyed by my lateness.\n"
		  },
		  "21": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I very easily lose the sense of time when I start baking.\n"
		  },
		  "22": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I received the news of your visit under such a short notice that I started getting lost from the excess of ideas of what to bake for you.\n"
		  },
		  "23": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " This is the reason of my lateness. So please have them, they were made just for you.\n"
		  },
		  "24": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Are you serious?\n"
		  },
		  "25": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Indeed.\n",
			"jump": 26
		  },
		  "26": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Go on. Please serve yourself. I await your feedback.\n"
		  },
		  "27": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "Why would he prepare cookies for me?"
		  },
		  "28": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "I'm his enemy. This does not make sense!"
		  },
		  "29": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Please do not feel shy. Make yourself at home?\n"
		  },
		  "30": {
			"is_line": false,
			"speaker": "",
			"mood": "",
			"body": "What to do?",
			"choice": 2,
			"choices": [
				{
					"body": "Take a bite",
					"key": "merax",
					"value": 3,
					"jump": 31
				  },
				  {
					"body": "Decline, he could have poisoned them.",
					"key": "merax",
					"value": 0,
					"jump": 36
				  },
				  {
					"body": "I’m not hungry",
					"key": "merax",
					"value": 1,
					"jump": 41
				  }
			]
		  },
		  "31": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "sad",
			"body": "'Better not get on his bad side…'"
		  },
		  "32": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " They actually look pretty neat.\n"
		  },
		  "33": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " And its perfume seems very familiar, somehow.\n"
		  },
		  "34": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I'm glad that you like its first impression, but what about its taste?\n"
		  },
		  "35": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "And as per his request you bring one of the cookies to your mouth and…",
			"jump" : 47
		  },

		  "36": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I\u2019m not touching these. You could have poisoned them.\n"
		  },
		  "37": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " I\u2019m very offended by your insolence.\n"
		  },
		  "38": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " To think I stoop so low, just for a victory is very insulting.\n"
		  },
		  "39": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Furthermore adding any form of toxin to the dough would just not work well and will definitely lead to it being very redundant.\n"
		  },
		  "40": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Fine, fine I get it\u2026 I\u2019ll take a bite.\n",
			"jump" : 47
		  },
		  "41": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Please, I know you are saying this to be polite.\n"
		  },
		  "42": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " But, it is just a bite. I doubt that your stomach is that full.\n"
		  },
		  "43": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But-\n"
		  },
		  "44": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I insist.\n"
		  },
		  "45": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "I think I better have a bite\u2026 It doesn't seem like he will let me get away without tasting the cookies\u2026"
		  },
		  "46": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Let me taste this smaller one\u2026\n",
			"jump" : 47
		  },
		  "47":{
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "Crunch"
		  },
		  "48": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " So, what do you think of them?\n"
		  },
		  "49": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " *crunch crunch*\n"
		  },
		  "50": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "unique",
			"body": "*crunch crunch*"
		  },
		  "51": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " Your silence feels very troubling to me? Did I make a mistake in my recipe?\n"
		  },
		  "52": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " AAAAAAAAAAAH!!!\n"
		  },
		  "53": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " !?\n"
		  },
		  "54": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " This cookie!\n"
		  },
		  "55": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " Is something wrong?\n"
		  },
		  "56": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " It is so goood!!!\n"
		  },
		  "57": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " The texture! The amount of chocolate chips! The taste! So good.\n"
		  },
		  "58": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " Very glad that you appreciate my baking.\n"
		  },
		  "59": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Actually, now that I think about it well\u2026 It tastes like my favourite cookies.\n"
		  },
		  "60": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " They are not really on sale but every so often I usually find a red box outside of my place containing them.\n"
		  },
		  "61": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " And for festivities the boxes are even bigger!\n"
		  },
		  "62": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I never understood who gave them to me though. Neither the sender's name or address is usually written in it.\n"
		  },
		  "63": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " Ah! So they did reach you. \n"
		  },
		  "64": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Wait, you were the one sending them?\n"
		  },
		  "65": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Indeed. I usually bake too much of those and just send them to you.\n"
		  },
		  "66": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " For festivities I always try to add more since it's a celebration.\n"
		  },
		  "67": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But why don't you ever put a card to say it was from you.\n"
		  },
		  "68": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I am certain that you would simply shrug at it and be suspicious while probably discarding it to the trash, thinking it is laced with some toxic substances.\n",
		  },
		  "69": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Like you did a few minutes earlier.\n",
			"condition" : {
				"scene" : 1,
				"props": {
				"key" : 2,
				"value": 2
				},
				"true" : 69,
				"false" : 72
			}
		  },
		  "70": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I said it earlier! Sorry!\n"
		  },
		  "71": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " It does not invalidate my previous assumption.\n",
			"jump" : 72
		  },
		  "72": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Either way, may I know the reason for your visit here?\n"
		  },
		  "73": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " It is not something I ever believed you would ask.\n"
		  },
		  "74":{
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": " "
		  },
		  "75": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " You remember the last joint battle right? Where Esceles kind of got blown away by you and your buddy?\n"
		  },
		  "76": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " How could I forget it? It happened four days ago and the others in the league are still nagging me about how I needed assistance to \u2018get that moolah\u2019.\n"
		  },
		  "77": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Little do they know I was the one who was the architect behind most of the plan. The day I will prove to all these fools about my superiority in evilness will soon come.\n"
		  },
		  "78": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Are you okay buddy?\n"
		  },
		  "79": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Deepest apologies for the tangent and endless ranting. I despise how people think low of me in the league but to answer your question yes.\n"
		  },
		  "80": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " That event got stuck in Astraea\u2019s mind. She is now thinking of quitting her magical girl job!\n"
		  },
		  "81": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " And how does that concern me?\n"
		  },
		  "82": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " What!? The little girl is traumatised. She is so shocked it feels like she lost herself.\n"
		  },
		  "83": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I repeat. Why should I care? How would that affect me?\n"
		  },
		  "84": {
			"is_line": false,
			"speaker": "",
			"mood": "",
			"body": "",
			"choice" :3,
			"choices": [
				{
					"body": "Because you are the one responsible for it!",
					"key": "merax",
					"value": 0,
					"jump": 85
				  },
				  {
					"body": "Isn’t she a dear coworker to you?",
					"key": "merax",
					"value": 2,
					"jump": 96
				  },
				  {
					"body": "You will never be able to defeat her.",
					"key": "merax",
					"value": 1,
					"jump": 99
				  }
			]
		  },
		  "85": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " If you had not been such a brute this would have never happened!\n"
		  },
		  "86": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Please do not try to shift the blame on me.\n"
		  },
		  "87": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Especially when the only thing I did was my job. Is it wrong to earn my living while doing my occupation?\n"
		  },
		  "88": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But-\n"
		  },
		  "89": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Please if you wanna blame someone for her state. You should blame yourself.\n"
		  },
		  "90": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " After all, it was you who introduced such a young child to such a dangerous activity.\n"
		  },
		  "91": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But this is how it has always been.\n"
		  },
		  "92": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Then perhaps there is something wrong with your roots. \n"
		  },
		  "93": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Actually, isn\u2019t it unpaid labour? Worst of all\u2026 Child labour.\n"
		  },
		  "94": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Am I truly the bad person in this room when you exist.\n"
		  },
		  "95": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "[i]I have no comeback! Dammit![/i]",
			"jump": 103
		  },
		  "96": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I suppose so.\n"
		  },
		  "97": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " We did spend quite a few years together. It would be very odd to no longer face her on the battlefield.\n"
		  },
		  "98": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " And there is also the paperwork and research. I\u2019ll have to restart everything to zero.\n",
			"jump": 103
		},
		  "99": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " What are you trying to insinuate?\n"
		  },
		  "100": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Well, you still haven't completely defeated Astraea and conquered the town.\n"
		  },
		  "101": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " And since she will turn the leaf over, it\u2019s not like you will technically be ever able to defeat.\n"
		  },
		  "102": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Well I suppose it might be true. But I can set my pride aside and accept that defeat.\n",
			"jump" : 103  
		},
		  "103": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Still, I\u2019m not sold on your proposition.\n"
		  },
		  "104": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " If I decided to aid you what would I gain?\n"
		  },
		  "105": {
			"is_line": false,
			"speaker": "",
			"mood": "",
			"body": "",
			"choice":4,
			"choices": [
				{
					"body": "More respect from the evil league.",
					"key": "merax",
					"value": 4,
					"jump": 106
				  },
				  {
					"body": "More persons to taste your cookies.",
					"key": "merax",
					"value": 2,
					"jump": 112
				  },
				  {
					"body": "A clear conscience for having helped a little girl get better.",
					"key": "merax",
					"value": 0,
					"jump": 122
				  }
			]
		  },
		  "106": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I don\u2019t think seizing a defenceless town would really help the members of your league to take you more seriously.\n"
		  },
		  "107": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " Hmm you make a valid point.\n"
		  },
		  "108": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Just imagine it. People no longer bugging you around and also what about your parents?\n"
		  },
		  "109": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I bet they would be so proud of their son!\n"
		  },
		  "110": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " Hmm I will finally be able to prove to father that I am still as much of a genius.\n"
		  },
		  "111": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " See! So many reasons to help me.\n",
			"jump": 127
		  },
		  "112": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Pensive",
			"body": " Excuse me? What do you mean by this?\n"
		  },
		  "113": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Well, you said that you usually send me cookies for celebrations and other times.\n"
		  },
		  "114": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I could share them with Astraea who will likely also share with his mother and her best friend.\n"
		  },
		  "115": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Now if she were to leave the city,it would likely be conquered by you which will very likely to cause me to fade away.\n"
		  },
		  "116": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " And thus you would lose me and also the people Astraea would have shared with. You will have no more people to send your excess cookies too.\n"
		  },
		  "117": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " While I appreciate your efforts to make my talents more widespread.\n"
		  },
		  "118": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " It is still an iffy argument. Moreover if you were to disappear, I could simply send my cookies to Mayor Orden or that ever grumpy officer.\n"
		  },
		  "119": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Happy",
			"body": " Maybe my cookies will be the trigger to make his heart melt.\n"
		  },
		  "120": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But what if they are not cookies enthusiasts like me and actually hate it.\n"
		  },
		  "121": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " I hope you do realise that cookies are not the only item I can bake.\n",
			"jump": 127
		  },
		  "122": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " This is somewhat of a moot point.\n"
		  },
		  "123": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Since to relieve the conscience you must actually feel remorse towards.\n"
		  },
		  "124": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Which I do not. After all, I believe that it is not at all my responsibility about her status.\n"
		  },
		  "125": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " You really are despicable.\n"
		  },
		  "126": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Well please, it is my job.\n",
			"jump": 127
		  },
		  "127": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Even then I do not think it would be fair to me.\n"
		  },
		  "128": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " What do you want more?\n"
		  },
		  "129": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Maybe if you help me with my problem then I\u2019ll help you.\n"
		  },
		  "130": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " If it is about trying to conquer Anutta then it is a big no.\n"
		  },
		  "131": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Why do you always assume that my agenda relates to your city.\n"
		  },
		  "132": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " What I really need is something to alleviate the annoyance that is grocery shopping to me.\n"
		  },
		  "133": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " You dislike grocery shopping?\n"
		  },
		  "134": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Far from it, I actually enjoy shopping, especially discovering new concoctions to add to my recipes.\n"
		  },
		  "135": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " My problem is more the process of it.\n"
		  },
		  "136": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Whenever I try to come to town to make my purchases I\u2019m often shunned and people kick me out of the store. A little girl even kicked me while I was selecting oranges.\n"
		  },
		  "137": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I even tried to come in with a face mask so that people do not know it is me, but they ended up calling the police because I looked like a robber.\n"
		  },
		  "138": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Wow, that sounds bad. Have you tried shopping online and having them deliver it at your place?\n"
		  },
		  "139": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " This is an additional set of complications. The delivery persons do not want to deliver it at my place. They leave my goods 10 minutes away from my home every time.\n"
		  },
		  "140": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " It is supposedly because my place looks too scary or that they fear for their safety, at least based on what customer service said to me.\n"
		  },
		  "141": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " This is very presumptuous of them as I have no use of delivery men and again,  I do not intend to work when I\u2019m not getting paid.\n"
		  },
		  "142": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " So, what do you intend to do to resolve my situation?\n"
		  },
		  "143": {
			"is_line": false,
			"speaker": "",
			"mood": "",
			"body": "",
			"choice" : 5,
			"choices": [
				{
					"body": "Make the facade of your house more appealing?",
					"key": "merax",
					"value": 2,
					"jump": 144
				  },
				  {
					"body": "Maybe if you remove your mask?",
					"key": "merax",
					"value": 2,
					"jump": 153
				  },
				  {
					"body": "Maybe you wear a specific non-scary outfit to go shopping?",
					"key": "merax",
					"value": 3,
					"jump": 158
				  }
			]
		  },
		  "144": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " \u201cIf it scares the delivery persons, maybe if you make it less intimidating it will be better?\u201d\n"
		  },
		  "145": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I really would like to alter it too, probably in a cozy cabin style but the evil league requires an equally villainous appearance.\n"
		  },
		  "146": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " What if you just changed jobs then? You seem pretty annoyed by your league.\n"
		  },
		  "147": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " It was actually my last available option. I first tried to open up my own bakery but was constantly berated by the others.\n"
		  },
		  "148": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Their gross behaviour would drive away all the customers.\n"
		  },
		  "149": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I tried many other different occupations such as a postman, a news host on the television and even a waiter at ManagerDonut.\n"
		  },
		  "150": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " They never worked out because people were always intimidated by someone like me even if I stipulated my intentions.\n"
		  },
		  "151": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " This is really sad.\n"
		  },
		  "152": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " It definitely is, the way your people view every of mine as evil.\n",
			"jump":164
		},
		  "153": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " Preposterous!\n"
		  },
		  "154": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Whaaaat!\n"
		  },
		  "155": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " It\u2019s the equivalent of telling you humans to walk around nude.\n"
		  },
		  "156": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Annoyed",
			"body": " I swear these days people are so rude.\n"
		  },
		  "157": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I\u2019m sorry I guess.\n",
			"jump":164
		  },
		  "158": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " It would be your official shopping outfit, where most people would know that you are only coming to town to do your non-evil business.\n"
		  },
		  "159": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I suppose it might work, but word of the outfit must be made clear to everyone.\n"
		  },
		  "160": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": "Also, I will be very honest with you though, the thought of always wearing the same outfit every time for this task is very unappealing. \n"
		  },
		  "161": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But it is just an outfit?\n"
		  },
		  "162": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Why should I not be allowed to switch up my shopping accoutrement like humans though.\n"
		  },
		  "163": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Hmpf\u2026\n",
			"jump" :164
		  },
		  "164": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " \u2026\n"
		  },
		  "165": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " \u2026\n"
		  },
		  "166": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " So\u2026 uh\u2026 Can I count on your support?\n"
		  },
		  "167": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " I shall consider your request and give you a response in a few days.\n"
		  },
		  "168": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But why not right now?\n"
		  },
		  "169": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Because I have work to plan for. I have a family reunion the day tomorrow and then a league meeting the day after. I can only make an attack attempt on the town after then.\n"
		  },
		  "170": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Why don\u2019t you simply cancel the attack?\n"
		  },
		  "171": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " If I do so, I would miss out on the quota of two attacks minimum per week.\n"
		  },
		  "172": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " But-\n"
		  },
		  "173": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Smug",
			"body": " Please, I believe we have reached the end of our conversation. I have to find an effective strategy that will work with my limited schedule and do not worry, I will send you the results of my musings on your proposition.\n"
		  },
		  "174": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Do you have any last words?\n"
		  },
		  "175": {
			"is_line": false,
			"speaker": "",
			"mood": "",
			"body": "",
			"choice" : 6,
			"choices": [
				{
				"body": "Do you have any more cookies left?",
				"key": "merax",
				"value": 2,
				"jump": 176
			  },
			  {
				"body": "Are you sure you cannot delay your attack?",
				"key": "merax",
				"value": 0,
				"jump": 182
			  },
			  {
				"body": "Have a good time with your family.",
				"key": "merax",
				"value": 1,
				"jump": 190
			  }
			]
		  },
		  "176": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Joy",
			"body": " I do, lemme fetch a box so you can pack it on our way home.\n"
		  },
		  "177": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Thank you, they are just really good.\n"
		  },
		  "178": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Joy",
			"body": " I\u2019m glad you enjoy my baking. If you want I can be more experimental next time and try to include poison?\n"
		  },
		  "179": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I-I think I\u2019m good with the classic ingredients\u2026\n"
		  },
		  "180": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Joy",
			"body": " I was only fiddling around. Please do not worry.\n"
		  },
		  "181": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Either way. Farewell and I wish you good day and luck on your quest.\n",
			"jump":196
		  },
		  "182": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " You know i\u2019m in a very tough sp-\n"
		  },
		  "183": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " No.\n"
		  },
		  "184": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": "  Bu-\n"
		  },
		  "185": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " No need to insist. My stance is final. It is a no.\n"
		  },
		  "186": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " \u2026\n"
		  },
		  "187": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " Well I hope your next batch of cookies turn out wrong!\n"
		  },
		  "188": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " What a rude little rodent. Now out of my place. What if you have some bubonic disease on you!?\n"
		  },
		  "189": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " I\u2019M NOT A RAT!\n",
			"jump" :196
		  },
		  "190": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Thank you very much, although I doubt it would be the case.\n"
		  },
		  "191": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Confused",
			"body": " You know very well how family reunions always are\u2026\n"
		  },
		  "192": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Oh my apologies, that was rather insensitive from me.\n"
		  },
		  "193": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " It\u2019s cool\u2026 The whole town is my family.\n"
		  },
		  "194": {
			"is_line": true,
			"speaker": "Manager",
			"mood": "",
			"body": " \u201cBut It sure does feel like I\u2019m the neglected middle kid.\u201d\n"
		  },
		  "195": {
			"is_line": true,
			"speaker": "Merax",
			"mood": "Neutral",
			"body": " Either way, have a good day. I need to prepare myself.\n",
			"jump" :196
		  }
		}
	}
	  
