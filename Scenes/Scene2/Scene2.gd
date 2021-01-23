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
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cMayors are obviously the ones with the most sway in a city.\u201d"
			},
			"2": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cIt is no different for Mayor Rei Orden.\u201d"
			},
			"3": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cActually this applies even more to her, as she is not only the mayor of Hanutta but is also very appreciated by her citizens.\u201d"
			},
			"4": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cMayor Orden has been managing the town for almost 10 years now. Her passion to keep the city safe and joyful for the inhabitants is nothing to scoff at.\u201d"
			},
			"5": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cThus she is definitely one of the persons that could help alleviate Astraea\u2019s load a bit.\u201d"
			},
			"6": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "\u201cYou are somewhat used to talking to her but today \u2026\u201d"
			},
			"7": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "failed",
				"body": "\u2026"
			},
			"8": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "neutral",
				"body": "\u2026"
			},
			"9": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "failed",
				"body": "\u2026"
			},
			"10": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "neutral",
				"body": "\u2026"
			},
			"11": {
			"is_line": true,
			"speaker": "",
			"mood": "",
			"body": "\u201c... a word wouldn\u2019t escape your mouth.\u201d"
			},
			"12": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "confused",
				"body": "So Manager? What is the matter?"
			},
			"13": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "confused",
				"body": "If you just wanted to look at my face, you could have simply taken one of my old posters?"
			},
			"14": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "So please, tell me what\u2019s going on. I also have some other issues I must focus on."
			},
			"15": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "\u2026"
			},
			"16": {
				"is_line": false,
				"speaker": "",
				"mood": "",
				"body": "",
				"choice": 3,
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
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "It is because you are super intimidating."
			},
			"18": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Oh?"
			},
			"19": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "You know I will not be hostile to you unless you do or say something stupid again."
			},
			"20": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I guess so\u2026 So you are no longer mad at me?"
			},
			"21": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "\u2026"
			},
			"22": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "No."
			},
			"23": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]To me it still feels like she is...[/i]"
			},
			"24": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Now can I finally have the reason for your visit.",
				"jump": 46
			},
			"25": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I don\u2019t like asking for favours."
			},
			"26": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I can see that. Someone as selfish as you probably wouldn\u2019t like to step down from their throne."
			},
			"27": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I\u2019m not selfish."
			},
			"28": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "That is up for debate."
			},
			"29": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But either way, as long as your requests are not as idiotic as your Chestopia, we can discuss about it."
			},
			"30": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Chestopia is not stupid! The amendment I\u2019m designing for it will make you eat back your words."
			},
			"31": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "No modifications can save that trainwreck. Anything born from your narcissism will be discarded."
			},
			"32": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "That is harsh."
			},
			"33": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I know very well that no amount of harshness will prevent you from proposing ridiculous demands."
			},
			"34": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "So, what madness do you wish for this time? "
			},
			"35": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I had my secretary order a special new rejection stamp to use on your proposals.",
				"jump":46
			},
			"36": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "You are so pretty it is intimidating."
			},
			"37": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "\u2026"
			},
			"38": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "\u2026"
			},
			"39": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "\u2026"
			},
			"40": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Why no response?"
			},
			"41": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Because I can sense the sarcasm from you."
			},
			"42": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "What."
			},
			"43": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "You know I do not like meaningless chatter."
			},
			"44": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Especially ones that feel so fake like your commentary before."
			},
			"45": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Spill the beans. What do you want Manager?",
				"jump": 46
			},
			"46": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "You know about Astraea\u2019s last battle right?"
			}, 
			"47": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Obviously. I need to be up to date to properly govern the town."
			},
			"48": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Well she has been traumatised from the battle. She wants to stop her job."
			},
			"49": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "What did you expect to happen? I mean using teenage girls for such tasks."
			},
			"50": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I don\u2019t understand the need for such comments right now. The poor girl is struggling hard right now."
			},
			"51": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Actually this might be a good time to reevaluate your choices of employees."
			},
			"52": {
				"is_line": false,
				"speaker": "",
				"mood": "",
				"body": "",
				"choice": 3,
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
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "It\u2019s the tradition of the town to have a magical girl!"
			},
			"54": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Oh? Well can you not see how problematic these traditions are?"
			},
			"55": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Teenagers are very vulnerable due to the amount of changes that occurs to them and how they perceive the world."
			},
			"56": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Adding an additional responsibility that is also a life-threatening experience is definitely not healthy to them."
			},
			"57": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "But-"
			},
			"58": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But? Does that mean you approve of this form of arguably child abuse."
			},
			"59": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "No, but it is all consensual and as I said it was a tradition. We can\u2019t just stop it."
			},
			"60": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Why not? It is nice to have traditions and roots that form your culture."
			},
			"61": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But you need to evaluate whether they truly are right or not and whether they still have a place in this world."
			},
			"62": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "For example, there was a certain culture which had a tradition. If ever one person of a married couple were to die, the other also had to be executed."
			},
			"63": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "This is horrible but why?"
			},
			"64": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Death cannot tear apart the bonds laid by their marriage and thus they shall always be together."
			},
			"65": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But obviously this tradition has been banned due to unnecessary manslaughter."
			},
			"66": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "So yeah. Having traditions is nice, but are they truly the correct thing."
			},
			"67": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "And in this case. Is recruiting young teenage girls to fight in life or death situations with horrible individuals worth it?"
			},
			"68": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Wouldn\u2019t it be better to use a trained adult instead?"
			},
			"69": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]Argh, She got me..[/i]",
				"jump":102
			},
			"70": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "You are still mad at me, aren\u2019t you?"
			},
			"71": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "For not recruiting you as a magic girl when you were younger\u2026"
			},
			"72": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I remember you were very enthusiastic about it and dreamed about it\u2026"
			},
			"73": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "But I had chosen another girl..."
			},
			"74": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "That\u2019s why you are so vindictive right now."
			},
			"75": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Am I wrong?"
			},
			"76": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Heh. I am not angry, I [b]WAS[/b]."
			},
			"77": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "It broke me being ignored by the person I adored."
			},
			"78": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But now I am actually glad that it happened truly."
			},
			"79": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "So thank you a lot, Manager."
			},
			"80": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "What do you mean?"
			},
			"81": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "After you ignored me, I decided that I\u2019ll work so hard that the citizens would no longer need you or your magical girls."
			},
			"82": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "The rejection became the drive to what I am right now."
			},
			"83": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "The population love me, it\u2019s only a matter of time before you are no longer the [i]\u2018Oh Mighty Spirit\u2019[/i] and instead become a mere mascot."
			},
			"84": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "That won\u2019t happen! Me and Astraea are still the city\u2019s defence."
			},
			"85": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "You barely even invest in your police."
			},
			"86": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I\u2019m just abusing your services and saving money."
			},
			"87": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Assuming everything goes well, I should be able to ditch your dodgy services and instead have a super police squad from all the saved money."
			},
			"88": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]What is this woman\u2026 I never knew she could be this scary\u2026[/i]",
				"jump":102
			},
			"89": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Justine was an excellent choice to become a Magical Girl and the protector of this town."
			},
			"90": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I know you do not like me too much, but I won\u2019t tolerate slander towards Justine."
			},
			"91": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "She is one of the kindest persons I have ever known."
			},
			"92": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "She is also a strong and passionate girl."
			},
			"93": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Truly one of the best Astraea I have spent my time with."
			},
			"94": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I was not bad mouthing your recruit at all."
			},
			"95": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Actually I\u2019m very amazed with how she can stay sane with a mad and self-centered rodent-spirit thingy like you."
			},
			"96": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I\u2019m not a rodent!"
			},
			"97": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Squirrels are a form of rodents. My point stands."
			},
			"98": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Still I\u2019m glad that you actually treasure Astraea well."
			},
			"99": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Then what\u2019s the problem with my recruit."
			},
			"100": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "My problem is more with the whole process of it how your prospects are some of the most vulnerable demographic of citizens."
			},
			"101": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]It was such a mistake to ask for more explanation. Knowing her, she\u2019ll roast me if she continues \u2026[/i]",
				"jump": 102
			},
			"102": {
				"is_line": true,
				"speaker": "",
				"mood": "",
				"body": "[i]“Mayor Orden was about to continue her criticism when her phone rang…”[/i]"
			},
			"103": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "My apologies. I will take the call and continue. It might be something important."
			},
			"104": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "Oh! sure."
			},
			"105": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Thank you\u2026 Yes, Chief Meyer, what is the manner \u2026"
			},
			"106": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]I really need to get up on my feet.[/i]"
			},
			"107": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]She really dominated me with her criticisms and logical arguments.[/i]"
			},
			"108": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]I cannot let her catch me in her web again.[/i]"
			},
			"109": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]I should instead shift the topic to her since she is not one to brag usually.[/i]"
			},
			"110": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]Emotional arguments and jokes are a no go against her.[/i]"
			},
			"111": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "[i]So I should try to appeal to her goals of staying the leader and how actually helping and keeping Astraea here will help her agenda in a logical manner.[/i]"
			},
			"112": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Thank you for waiting. It was the Chief of the Police."
			},
			"113": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "He is inviting me for another dinner after work."
			},
			"114": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "He is truly a bizarre individual if you ask me."
			},
			"115": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "What do you mean by that?"
			},
			"116": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "He oftens asks me out for dinner to discuss important decisions based on what he says on the phone."
			},
			"117": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But when we meet up, he gets all red and barely speaks at all."
			},
			"118": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "It really feels like he has a special condition maybe?"
			},
			"119": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But it gets really tiring sometimes since you know well that I hate trivial reunions."
			},
			"120": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "And one time was so embarrassing. I think it may have been a couple\u2019s special night at the restaurant and people actually thought we were a couple."
			},
			"121": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I think I may have an idea why\u2026"
			},
			"122": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Oh? Why would it be?"
			},
			"123": {
				"is_line": false,
				"speaker": "",
				"mood": "",
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
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "He is probably in love with you."
			},
			"125": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "And he might just be too shy to say it."
			},
			"126": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "And you Rei, are too dense to realise it."
			},
			"127": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "It's Mayor Orden for you."
			},
			"128": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Also him being in love with me is just stupid."
			},
			"129": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "A relationship between the Mayor and the Chief of Police is bad news."
			},
			"130": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I\u2019m fairly sure he knows about it."
			},
			"131": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "And also the age difference. I\u2019m almost 43 while Chief Meyer is only 34."
			},
			"132": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I doubt he would be interested in such elder woman."
			},
			"133": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "And forgive my language. But someone as young, fresh and successful as him, must surely have a partner."
			},
			"134": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I don\u2019t know why but I doubt all of what you just said.",
				"jump":152
			},
			"135": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "He is probably too shy to ask for a raise or something like that."
			},
			"136": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "I\u2019d be a little embarrassed too if it were that case."
			},
			"137": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "And since you barely allocate any funds to the police, it sounds very likely in my opinion."
			},
			"138": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "This is what I was thinking too."
			},
			"139": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I cannot really give them too much right now because of the future prospect that I am planning."
			},
			"140": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "But I suppose a small investment to them can\u2019t hurt."
			},
			"141": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "After all, the times they had to intervene were solved easily."
			},
			"142": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I guess a small reward is due."
			},
			"143": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Still something bugs me tho. Chief Meyer still insists on footing the bill every time."
			},
			"144": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "I would have thought since the tight funds means tighter salary would lead to him not being as insistent but here we are."
			},
			"145": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "It is probably that masculine chivalry instinct thingy."
			},
			"146": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Maybe so, I hope he is doing well financially though.",
				"jump":152
			}, 
			"147": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Oh? What makes you say that?"
			},
			"148": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "He is bringing you to these silent dinners just to observe you and your habits."
			},
			"149": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "And then maybe one day kill you by getting poison in it."
			},
			"150": {
				"is_line": true,
				"speaker": "Manager",
				"mood": "",
				"body": "You also said his face often got red, maybe it is the shame or the guilt of the act he would be doing in the future."
			},
			"151": {
				"is_line": true,
				"speaker": "Mayor Orden",
				"mood": "",
				"body": "Interesting. Truly because I actually thought of the same. I\u2019ve often spotted him from my home window and he always seemed to have a package with him.",
				"jump": 152
			},
		}
	}