extends Scene

var manager : Node2D;
var mayor: Node2D


func _ready():
	var resp = build_scene(get_content());
	var loaded_chars :Array = resp[0];
	content = resp[1].content;
	manager = loaded_chars[0];
	mayor = loaded_chars[1];
	manager.visible = true;
	mayor.visible = true;
	character = {"Mayor Orden": mayor, "Manager": manager}
	play_scene()

func get_content()->Dictionary:
	return {
		"scene": 2,
		"bg": "res://Asset/Scenes/BG_MayorOffice.png",
		"character": ["Manager", "Mayor"],
		"content": {
			"1": {
				"speaker": "",
				"body": "\u201cMayors are obviously the ones with the most sway in a city.\u201d"
			},
			"2": {
				"speaker": "",
				"body": "\u201cIt is no different for Mayor Rei Orden.\u201d"
			},
			"3": {
				"speaker": "",
				"body": "\u201cActually this applies even more to her, as she is not only the mayor of Hanutta but is also very appreciated by her citizens.\u201d"
			},
			"4": {
				"speaker": "",
				"body": "\u201cMayor Orden has been managing the town for almost 10 years now. Her passion to keep the city safe and joyful for the inhabitants is nothing to scoff at.\u201d"
			},
			"5": {
				"speaker": "",
				"body": "\u201cThus she is definitely one of the persons that could help alleviate Astraea\u2019s load a bit.\u201d"
			},
			"6": {
				"speaker": "",
				"body": "\u201cYou are somewhat used to talking to her but today \u2026\u201d"
			},
			"7": {
				"speaker": "Manager",
				"mood": "sad",
				"body": "\u2026"
			},
			"8": {
				"speaker": "Mayor Orden",
				"mood": "neutral",
				"body": "\u2026"
			},
			"9": {
				"speaker": "Manager",
				"mood": "sad",
				"body": "\u2026"
			},
			"10": {
				"speaker": "Mayor Orden",
				"mood": "neutral",
				"body": "\u2026"
			},
			"11": {
			"speaker": "",
			"body": "\u201c... a word wouldn\u2019t escape your mouth.\u201d"
			},
			"12": {
				"speaker": "Mayor Orden",
				"mood": "confused",
				"body": "So Manager? What is the matter?"
			},
			"13": {
				"speaker": "Mayor Orden",
				"mood": "confused",
				"body": "If you just wanted to look at my face, you could have simply taken one of my old posters?"
			},
			"14": {
				"speaker": "Mayor Orden",
				"body": "So please, tell me what\u2019s going on. I also have some other issues I must focus on."
			},
			"15": {
				"speaker": "Manager",
				"body": "\u2026"
			},
			"16": {
				"speaker": "",
				"body": "",
				"choice": 1,
				"choices": [
					{
						"body": "It is because you are super intimidating.",
						"key": "mayor",
						"value": 1,
						"jump": 17
					},
					{
						"body": "I don’t like asking for favours…",
						"key": "mayor",
						"value": 2,
						"jump": 25
					},
					{
						"body": "You are so pretty it is intimidating.",
						"key": "mayor",
						"value": 0,
						"jump": 36
					}
				]
			},
			"17": {
				"speaker": "Manager",
				"body": "It is because you are super intimidating."
			},
			"18": {
				"speaker": "Mayor Orden",
				"body": "Oh?"
			},
			"19": {
				"speaker": "Mayor Orden",
				"body": "You know I will not be hostile to you unless you do or say something stupid again."
			},
			"20": {
				"speaker": "Manager",
				"body": "I guess so\u2026 So you are no longer mad at me?"
			},
			"21": {
				"speaker": "Mayor Orden",
				"body": "\u2026"
			},
			"22": {
				"speaker": "Mayor Orden",
				"body": "No."
			},
			"23": {
				"speaker": "Manager",
				"body": "[i]To me it still feels like she is...[/i]"
			},
			"24": {
				"speaker": "Mayor Orden",
				"body": "Now can I finally have the reason for your visit.",
				"jump": 46
			},
			"25": {
				"speaker": "Manager",
				"body": "I don\u2019t like asking for favours."
			},
			"26": {
				"speaker": "Mayor Orden",
				"body": "I can see that. Someone as selfish as you probably wouldn\u2019t like to step down from their throne."
			},
			"27": {
				"speaker": "Manager",
				"body": "I\u2019m not selfish."
			},
			"28": {
				"speaker": "Mayor Orden",
				"body": "That is up for debate."
			},
			"29": {
				"speaker": "Mayor Orden",
				"body": "But either way, as long as your requests are not as idiotic as your Chestopia, we can discuss about it."
			},
			"30": {
				"speaker": "Manager",
				"body": "Chestopia is not stupid! The amendment I\u2019m designing for it will make you eat back your words."
			},
			"31": {
				"speaker": "Mayor Orden",
				"body": "No modifications can save that trainwreck. Anything born from your narcissism will be discarded."
			},
			"32": {
				"speaker": "Manager",
				"body": "That is harsh."
			},
			"33": {
				"speaker": "Mayor Orden",
				"body": "I know very well that no amount of harshness will prevent you from proposing ridiculous demands."
			},
			"34": {
				"speaker": "Mayor Orden",
				"body": "So, what madness do you wish for this time? "
			},
			"35": {
				"speaker": "Mayor Orden",
				"body": "I had my secretary order a special new rejection stamp to use on your proposals.",
				"jump":46
			},
			"36": {
				"speaker": "Manager",
				"body": "You are so pretty it is intimidating."
			},
			"37": {
				"speaker": "Mayor Orden",
				"body": "\u2026"
			},
			"38": {
				"speaker": "Manager",
				"body": "\u2026"
			},
			"39": {
				"speaker": "Mayor Orden",
				"body": "\u2026"
			},
			"40": {
				"speaker": "Manager",
				"body": "Why no response?"
			},
			"41": {
				"speaker": "Mayor Orden",
				"body": "Because I can sense the sarcasm from you."
			},
			"42": {
				"speaker": "Manager",
				"body": "What."
			},
			"43": {
				"speaker": "Mayor Orden",
				"body": "You know I do not like meaningless chatter."
			},
			"44": {
				"speaker": "Mayor Orden",
				"body": "Especially ones that feel so fake like your commentary before."
			},
			"45": {
				"speaker": "Mayor Orden",
				"body": "Spill the beans. What do you want Manager?",
				"jump": 46
			},
			"46": {
				"speaker": "Manager",
				"body": "You know about Astraea\u2019s last battle right?"
			},
			"47": {
				"speaker": "Mayor Orden",
				"body": "Obviously. I need to be up to date to properly govern the town."
			},
			"48": {
				"speaker": "Manager",
				"body": "Well she has been traumatised from the battle. She wants to stop her job."
			},
			"49": {
				"speaker": "Mayor Orden",
				"body": "What did you expect to happen? I mean using teenage girls for such tasks."
			},
			"50": {
				"speaker": "Manager",
				"body": "I don\u2019t understand the need for such comments right now. The poor girl is struggling hard right now."
			},
			"51": {
				"speaker": "Mayor Orden",
				"body": "Actually this might be a good time to reevaluate your choices of employees."
			},
			"52": {
				"speaker": "",
				"body": "",
				"choice": 2,
				"choices": [
					{
						"body": "It’s the tradition of the town to have a magical girl!",
						"key": "mayor",
						"value": 0,
						"jump": 53
					},
					{
						"body": "You are still mad at me for not recruiting you for it …",
						"key": "mayor",
						"value": 4,
						"jump": 70
					},
					{
						"body": "Justine was an excellent choice to become Astraea!",
						"key": "mayor",
						"value": 2,
						"jump": 89
					}
				]
			},
			"53": {
				"speaker": "Manager",
				"body": "It\u2019s the tradition of the town to have a magical girl!"
			},
			"54": {
				"speaker": "Mayor Orden",
				"body": "Oh? Well can you not see how problematic these traditions are?"
			},
			"55": {
				"speaker": "Mayor Orden",
				"body": "Teenagers are very vulnerable due to the amount of changes that occurs to them and how they perceive the world."
			},
			"56": {
				"speaker": "Mayor Orden",
				"body": "Adding an additional responsibility that is also a life-threatening experience is definitely not healthy to them."
			},
			"57": {
				"speaker": "Manager",
				"body": "But-"
			},
			"58": {
				"speaker": "Mayor Orden",
				"body": "But? Does that mean you approve of this form of arguably child abuse."
			},
			"59": {
				"speaker": "Manager",
				"body": "No, but it is all consensual and as I said it was a tradition. We can\u2019t just stop it."
			},
			"60": {
				"speaker": "Mayor Orden",
				"body": "Why not? It is nice to have traditions and roots that form your culture."
			},
			"61": {
				"speaker": "Mayor Orden",
				"body": "But you need to evaluate whether they truly are right or not and whether they still have a place in this world."
			},
			"62": {
				"speaker": "Mayor Orden",
				"body": "For example, there was a certain culture which had a tradition. If ever one person of a married couple were to die, the other also had to be executed."
			},
			"63": {
				"speaker": "Manager",
				"body": "This is horrible but why?"
			},
			"64": {
				"speaker": "Mayor Orden",
				"body": "Death cannot tear apart the bonds laid by their marriage and thus they shall always be together."
			},
			"65": {
				"speaker": "Mayor Orden",
				"body": "But obviously this tradition has been banned due to unnecessary manslaughter."
			},
			"66": {
				"speaker": "Mayor Orden",
				"body": "So yeah. Having traditions is nice, but are they truly the correct thing."
			},
			"67": {
				"speaker": "Mayor Orden",
				"body": "And in this case. Is recruiting young teenage girls to fight in life or death situations with horrible individuals worth it?"
			},
			"68": {
				"speaker": "Mayor Orden",
				"body": "Wouldn\u2019t it be better to use a trained adult instead?"
			},
			"69": {
				"speaker": "Manager",
				"body": "[i]Argh, She got me..[/i]",
				"jump":102
			},
			"70": {
				"speaker": "Manager",
				"body": "You are still mad at me, aren\u2019t you?"
			},
			"71": {
				"speaker": "Manager",
				"body": "For not recruiting you as a magic girl when you were younger\u2026"
			},
			"72": {
				"speaker": "Manager",
				"body": "I remember you were very enthusiastic about it and dreamed about it\u2026"
			},
			"73": {
				"speaker": "Manager",
				"body": "But I had chosen another girl..."
			},
			"74": {
				"speaker": "Manager",
				"body": "That\u2019s why you are so vindictive right now."
			},
			"75": {
				"speaker": "Manager",
				"body": "Am I wrong?"
			},
			"76": {
				"speaker": "Mayor Orden",
				"body": "Heh. I am not angry, I [b]WAS[/b]."
			},
			"77": {
				"speaker": "Mayor Orden",
				"body": "It broke me being ignored by the person I adored."
			},
			"78": {
				"speaker": "Mayor Orden",
				"body": "But now I am actually glad that it happened truly."
			},
			"79": {
				"speaker": "Mayor Orden",
				"body": "So thank you a lot, Manager."
			},
			"80": {
				"speaker": "Manager",
				"body": "What do you mean?"
			},
			"81": {
				"speaker": "Mayor Orden",
				"body": "After you ignored me, I decided that I\u2019ll work so hard that the citizens would no longer need you or your magical girls."
			},
			"82": {
				"speaker": "Mayor Orden",
				"body": "The rejection became the drive to what I am right now."
			},
			"83": {
				"speaker": "Mayor Orden",
				"body": "The population love me, it\u2019s only a matter of time before you are no longer the [i]\u2018Oh Mighty Spirit\u2019[/i] and instead become a mere mascot."
			},
			"84": {
				"speaker": "Manager",
				"body": "That won\u2019t happen! Me and Astraea are still the city\u2019s defence."
			},
			"85": {
				"speaker": "Manager",
				"body": "You barely even invest in your police."
			},
			"86": {
				"speaker": "Mayor Orden",
				"body": "I\u2019m just abusing your services and saving money."
			},
			"87": {
				"speaker": "Mayor Orden",
				"body": "Assuming everything goes well, I should be able to ditch your dodgy services and instead have a super police squad from all the saved money."
			},
			"88": {
				"speaker": "Manager",
				"body": "[i]What is this woman\u2026 I never knew she could be this scary\u2026[/i]",
				"jump":102
			},
			"89": {
				"speaker": "Manager",
				"body": "Justine was an excellent choice to become a Magical Girl and the protector of this town."
			},
			"90": {
				"speaker": "Manager",
				"body": "I know you do not like me too much, but I won\u2019t tolerate slander towards Justine."
			},
			"91": {
				"speaker": "Manager",
				"body": "She is one of the kindest persons I have ever known."
			},
			"92": {
				"speaker": "Manager",
				"body": "She is also a strong and passionate girl."
			},
			"93": {
				"speaker": "Manager",
				"body": "Truly one of the best Astraea I have spent my time with."
			},
			"94": {
				"speaker": "Mayor Orden",
				"body": "I was not bad mouthing your recruit at all."
			},
			"95": {
				"speaker": "Mayor Orden",
				"body": "Actually I\u2019m very amazed with how she can stay sane with a mad and self-centered rodent-spirit thingy like you."
			},
			"96": {
				"speaker": "Manager",
				"body": "I\u2019m not a rodent!"
			},
			"97": {
				"speaker": "Mayor Orden",
				"body": "Squirrels are a form of rodents. My point stands."
			},
			"98": {
				"speaker": "Mayor Orden",
				"body": "Still I\u2019m glad that you actually treasure Astraea well."
			},
			"99": {
				"speaker": "Manager",
				"body": "Then what\u2019s the problem with my recruit."
			},
			"100": {
				"speaker": "Mayor Orden",
				"body": "My problem is more with the whole process of it how your prospects are some of the most vulnerable demographic of citizens."
			},
			"101": {
				"speaker": "Manager",
				"body": "[i]It was such a mistake to ask for more explanation. Knowing her, she\u2019ll roast me if she continues \u2026[/i]",
				"jump": 102
			},
			"102": {
				"speaker": "",
				"body": "[i]“Mayor Orden was about to continue her criticism when her phone rang…”[/i]"
			},
			"103": {
				"speaker": "Mayor Orden",
				"body": "My apologies. I will take the call and continue. It might be something important."
			},
			"104": {
				"speaker": "Manager",
				"body": "Oh! sure."
			},
			"105": {
				"speaker": "Mayor Orden",
				"body": "Thank you\u2026 Yes, Chief Meyer, what is the manner \u2026"
			},
			"106": {
				"speaker": "Manager",
				"body": "[i]I really need to get up on my feet.[/i]"
			},
			"107": {
				"speaker": "Manager",
				"body": "[i]She really dominated me with her criticisms and logical arguments.[/i]"
			},
			"108": {
				"speaker": "Manager",
				"body": "[i]I cannot let her catch me in her web again.[/i]"
			},
			"109": {
				"speaker": "Manager",
				"body": "[i]I should instead shift the topic to her since she is not one to brag usually.[/i]"
			},
			"110": {
				"speaker": "Manager",
				"body": "[i]Emotional arguments and jokes are a no go against her.[/i]"
			},
			"111": {
				"speaker": "Manager",
				"body": "[i]So I should try to appeal to her goals of staying the leader and how actually helping and keeping Astraea here will help her agenda in a logical manner.[/i]"
			},
			"112": {
				"speaker": "Mayor Orden",
				"body": "Thank you for waiting. It was the Chief of the Police."
			},
			"113": {
				"speaker": "Mayor Orden",
				"body": "He is inviting me for another dinner after work."
			},
			"114": {
				"speaker": "Mayor Orden",
				"body": "He is truly a bizarre individual if you ask me."
			},
			"115": {
				"speaker": "Manager",
				"body": "What do you mean by that?"
			},
			"116": {
				"speaker": "Mayor Orden",
				"body": "He oftens asks me out for dinner to discuss important decisions based on what he says on the phone."
			},
			"117": {
				"speaker": "Mayor Orden",
				"body": "But when we meet up, he gets all red and barely speaks at all."
			},
			"118": {
				"speaker": "Mayor Orden",
				"body": "It really feels like he has a special condition maybe?"
			},
			"119": {
				"speaker": "Mayor Orden",
				"body": "But it gets really tiring sometimes since you know well that I hate trivial reunions."
			},
			"120": {
				"speaker": "Mayor Orden",
				"body": "And one time was so embarrassing. I think it may have been a couple\u2019s special night at the restaurant and people actually thought we were a couple."
			},
			"121": {
				"speaker": "Manager",
				"body": "I think I may have an idea why\u2026"
			},
			"122": {
				"speaker": "Mayor Orden",
				"body": "Oh? Why would it be?"
			},
			"123": {
				"speaker": "",
				"body": "",
				"choice": 3,
				"choices": [
					{
						"body": "He is probably in love with you.",
						"key": "mayor",
						"value": 0,
						"jump": 124
					},
					{
						"body": "He’s probably too shy to ask for a raise ...",
						"key": "mayor",
						"value": 3,
						"jump": 135
					},
					{
						"body": "He’s probably a murderer trying to learn your habits.",
						"key": "mayor",
						"value": 1,
						"jump": 147
					}
				]
			},
			"124": {
				"speaker": "Manager",
				"body": "He is probably in love with you."
			},
			"125": {
				"speaker": "Manager",
				"body": "And he might just be too shy to say it."
			},
			"126": {
				"speaker": "Manager",
				"body": "And you Rei, are too dense to realise it."
			},
			"127": {
				"speaker": "Mayor Orden",
				"body": "It's Mayor Orden for you."
			},
			"128": {
				"speaker": "Mayor Orden",
				"body": "Also him being in love with me is just stupid."
			},
			"129": {
				"speaker": "Mayor Orden",
				"body": "A relationship between the Mayor and the Chief of Police is bad news."
			},
			"130": {
				"speaker": "Mayor Orden",
				"body": "I\u2019m fairly sure he knows about it."
			},
			"131": {
				"speaker": "Mayor Orden",
				"body": "And also the age difference. I\u2019m almost 43 while Chief Meyer is only 34."
			},
			"132": {
				"speaker": "Mayor Orden",
				"body": "I doubt he would be interested in such elder woman."
			},
			"133": {
				"speaker": "Mayor Orden",
				"body": "And forgive my language. But someone as young, fresh and successful as him, must surely have a partner."
			},
			"134": {
				"speaker": "Manager",
				"body": "I don\u2019t know why but I doubt all of what you just said.",
				"jump":152
			},
			"135": {
				"speaker": "Manager",
				"body": "He is probably too shy to ask for a raise or something like that."
			},
			"136": {
				"speaker": "Manager",
				"body": "I\u2019d be a little embarrassed too if it were that case."
			},
			"137": {
				"speaker": "Manager",
				"body": "And since you barely allocate any funds to the police, it sounds very likely in my opinion."
			},
			"138": {
				"speaker": "Mayor Orden",
				"body": "This is what I was thinking too."
			},
			"139": {
				"speaker": "Mayor Orden",
				"body": "I cannot really give them too much right now because of the future prospect that I am planning."
			},
			"140": {
				"speaker": "Mayor Orden",
				"body": "But I suppose a small investment to them can\u2019t hurt."
			},
			"141": {
				"speaker": "Mayor Orden",
				"body": "After all, the times they had to intervene were solved easily."
			},
			"142": {
				"speaker": "Mayor Orden",
				"body": "I guess a small reward is due."
			},
			"143": {
				"speaker": "Mayor Orden",
				"body": "Still something bugs me tho. Chief Meyer still insists on footing the bill every time."
			},
			"144": {
				"speaker": "Mayor Orden",
				"body": "I would have thought since the tight funds means tighter salary would lead to him not being as insistent but here we are."
			},
			"145": {
				"speaker": "Manager",
				"body": "It is probably that masculine chivalry instinct thingy."
			},
			"146": {
				"speaker": "Mayor Orden",
				"body": "Maybe so, I hope he is doing well financially though.",
				"jump":152
			},
			"147": {
				"speaker": "Mayor Orden",
				"body": "Oh? What makes you say that?"
			},
			"148": {
				"speaker": "Manager",
				"body": "He is bringing you to these silent dinners just to observe you and your habits."
			},
			"149": {
				"speaker": "Manager",
				"body": "And then maybe one day kill you by getting poison in it."
			},
			"150": {
				"speaker": "Manager",
				"body": "You also said his face often got red, maybe it is the shame or the guilt of the act he would be doing in the future."
			},
			"151": {
				"speaker": "Mayor Orden",
				"body": "Interesting. Truly because I actually thought of the same. I\u2019ve often spotted him from my home window and he always seemed to have a package with him.",
				"jump": 152
			},
		}
	}