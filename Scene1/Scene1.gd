extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# [E007] Nemesis Negotiation.

# "It was now time to get Mr.Big Bag Hotshot Merax on your side."

# "This will likely be a suicide mission but you will definitely be doomed if the town was left defenceless without its protector."

# "Merak surprisingly accepted your request to meet him."

# "And so here you are sitting in actually his very cozily decorated office that is very different from how you imagined it to be like."

# Merax [neutral]: I apologise for making you wait for so long, I had some other urgent work to tend to.

# (Choice 1)
# "Was it a distraction for you to attack the town?" ( 0 )
# {
# Merax [Annoyed]: This is quite presumptuous from you.

# Merax [Annoyed]: I have a schedule and today is my day off.

# Merax [Annoyed]: Why would I work overtime if I won't get paid for it?

# MC: You get paid for doing this?

# Merax [Annoyed]: How do you think I get the money to do everything that I do?

# Merax [Neutral]: Either way, my other important affairs pertained to my cookies.

# Merax [Neutral]: The temperature of the oven and the dough must be controlled to the decimal to ensure a perfectly crusty exterior yet soft interior while also leaving the chocolate chips molten yet solid.

# MC: I see…

# Merax [Neutral]: Oh forgive my ill manners, I forgot to give you a taste of them.
# }
# "I don't mind, you did say it was urgent." (+5)
# {
# Merax [Neutral]: I suppose urgent was a rather exaggerated choice of wording.

# Merax [Happy]: I was actually tending to these.

# MC: Cookies?

# Merax [Neutral]: Indeed. I am quite fascinated by the activity called baking. It has actually been a hobby of mine ever since I was a little child.
# }
# "It's fine. You did not leave me waiting for too long" (+2)
# {
# Merax [Neutral]: I'm glad to see you are not too annoyed by my lateness.

# Merax [Neutral]: I very easily lose the sense of time when I start baking.

# Merax [Neutral]: I received the news of your visit under such a short notice that I started getting lost from the excess of ideas of what to bake for you.

# Merax [Happy]: This is the reason of my lateness. So please have them, they were made just for you.

# MC: Are you serious?

# Merax [Neutral]: Indeed.
# }

# Merax [Neutral]: Go on. Please serve yourself. I await your feedback.

# MC : "Why would he prepare cookies for me?"

# MC : "I'm his enemy. This does not make sense!"

# Merax [Neutral]: Please do not feel shy. Make yourself at home?

# "What to do?"

# (Choice 2)
# Take a bite (+3)
# {
# "Better not get on his bad side…"

# MC: They actually look pretty neat.

# MC: And its perfume seems very familiar, somehow.

# Merax [Neutral]: I'm glad that you like its first impression, but what about its taste?

# “And as per his request you bring one of the cookies to your mouth and…”
# }
# Decline, he could have poisoned them. (0)
# {
# MC: I’m not touching these. You could have poisoned them.

# Merax [Annoyed]: I’m very offended by your insolence.

# Merax [Annoyed]: To think I stoop so low, just for a victory is very insulting.

# Merax [Neutral]: Furthermore adding any form of toxin to the dough would just not work well and will definitely lead to it being very redundant.

# MC: Fine, fine I get it… I’ll take a bite.
# }
# “I’m not hungry” (+1)
# {
# Merax [Neutral]: Please, I know you are saying this to be polite.

# Merax [Neutral]: But, it is just a bite. I doubt that your stomach is that full.

# MC: But-

# Merax [Neutral]: I insist.

# MC: "I think I better have a bite… It doesn't seem like he will let me get away without tasting the cookies…"

# MC: Let me taste this smaller one…
# }

# "Crunch"

# Merax [Happy]: So, what do you think of them?

# MC: *crunch crunch*

# Merax [Confused]: Your silence feels very troubling to me? Did I make a mistake in my recipe?

# MC: AAAAAAAAAAAH!!!

# Merax [Confused]: !?

# MC: This cookie!

# Merax [Confused]: Is something wrong?

# MC: It is so goood!!!

# MC: The texture! The amount of chocolate chips! The taste! So good.

# Merax [Happy]: Very glad that you appreciate my baking.

# MC: Actually, now that I think about it well… It tastes like my favourite cookies.

# MC: They are not really on sale but every so often I usually find a red box outside of my place containing them.

# MC: And for festivities the boxes are even bigger!

# MC: I never understood who gave them to me though. Neither the sender's name or address is usually written in it.

# Merax [Happy]: Ah! So they did reach you. 

# MC: Wait, you were the one sending them?

# Merax [Neutral]: Indeed. I usually bake too much of those and just send them to you.

# Merax [Neutral]: For festivities I always try to add more since it's a celebration.

# MC: But why don't you ever put a card to say it was from you.

# Merax [Neutral]: I am certain that you would simply shrug at it and be suspicious while probably discarding it to the trash, thinking it is laced with some toxic substances.

# (If choice 2 == 2)
# {
# Merax [Smug]: Like you did a few minutes earlier.

# MC: I said it earlier! Sorry!

# Merax [Smug]: It does not invalidate my previous assumption.
# }

# Merax [Neutral]: Either way, may I know the reason for your visit here?

# Merax [Neutral]: It is not something I ever believed you would ask.

# MC: You remember the last joint battle right? Where Esceles kind of got blown away by you and your buddy?

# Merax [Annoyed]: How could I forget it? It happened four days ago and the others in the league are still nagging me about how I needed assistance to ‘get that moolah’.

# Merax [Annoyed]: Little do they know I was the one who was the architect behind most of the plan. The day I will prove to all these fools about my superiority in evilness will soon come.

# MC: Are you okay buddy?

# Merax [Neutral]: Deepest apologies for the tangent and endless ranting. I despise how people think low of me in the league but to answer your question yes.
# MC: That event got stuck in Astraea’s mind. She is now thinking of quitting her magical girl job!

# Merax [Neutral]: And how does that concern me?

# MC: What!? The little girl is traumatised. She is so shocked it feels like she lost herself.

# Merax [Neutral]: I repeat. Why should I care? How would that affect me?

# (Choice 3)
# “Because you are the one responsible for it!” (0)
# {
# MC: If you had not been such a brute this would have never happened!

# Merax [Annoyed]: Please do not try to shift the blame on me.

# Merax [Annoyed]: Especially when the only thing I did was my job. Is it wrong to earn my living while doing my occupation?

# MC: But-

# Merax [Neutral]: Please if you wanna blame someone for her state. You should blame yourself.

# Merax [Neutral]: After all, it was you who introduced such a young child to such a dangerous activity.

# MC: But this is how it has always been.

# Merax [Smug]: Then perhaps there is something wrong with your roots. 

# Merax [Smug]: Actually, isn’t it unpaid labour? Worst of all… Child labour.

# Merax [Smug]: Am I truly the bad person in this room when you exist.

# MC: “I have no comeback! Dammit!”
# }
# “Isn’t she a dear coworker to you?”
# {
# Merax [Neutral]: I suppose so.

# Merax [Neutral]: We did spend quite a few years together. It would be very odd to no longer face her on the battlefield.

# Merax [Annoyed]: And there is also the paperwork and research. I’ll have to restart everything to zero.
# }
# “You will never be able to defeat her.”
# {
# Merax [Annoyed]: What are you trying to insinuate?

# MC: Well, you still haven't completely defeated Astraea and conquered the town.

# MC: And since she will turn the leaf over, it’s not like you will technically be ever able to defeat.

# Merax [Annoyed]: Well I suppose it might be true. But I can set my pride aside and accept that defeat.
# }

# Merax [Neutral]: Still, I’m not sold on your proposition.

# Merax [Neutral]: If I decided to aid you what would I gain?

# (Choice 4)
# “More respect from the evil league.” (+5)
#     {
#     MC: I don’t think seizing a defenceless town would really help the members of your league to take you more seriously.

#     Merax [Confused]: Hmm you make a valid point.

#     MC: Just imagine it. People no longer bugging you around and also what about your parents?

#     MC: I bet they would be so proud of their son!

#     Merax [Confused]: Hmm I will finally be able to prove to father that I am still as much of a genius.

#     MC: See! So many reasons to help me.
#     }
# “More persons to taste your cookies.”

# Merax [Confused]: Excuse me? What do you mean by this?

# MC: Well, you said that you usually send me cookies for celebrations and other times.
# MC: I could share them with Astraea who will likely also share with his mother and her best friend.

# MC: Now if she were to leave the city,it would likely be conquered by you which will very likely to cause me to fade away.

# MC: And thus you would lose me and also the people Astraea would have shared with. You will have no more people to send your excess cookies too.

# Merax [Happy]: While I appreciate your efforts to make my talents more widespread.

# Merax [Neutral]: It is still an iffy argument. Moreover if you were to disappear, I could simply send my cookies to Mayor Orden or that ever grumpy officer.

# Merax [Happy]: Maybe my cookies will be the trigger to make his heart melt.

# MC: But what if they are not cookies enthusiasts like me and actually hate it.

# Merax [Annoyed]: I hope you do realise that cookies are not the only item I can bake.
# }
# “A clear conscience for having helped a little girl get better.”
# {
# Merax [Neutral]: This is somewhat of a moot point.

# Merax [Neutral]: Since to relieve the conscience you must actually feel remorse towards.

# Merax [Smug]: Which I do not. After all, I believe that it is not at all my responsibility about her status.

# MC: You really are despicable.

# Merax [Neutral]: Well please, it is my job.
# }

# Merax [Neutral]: Even then I do not think it would be fair to me.

# MC: What do you want more?

# Merax [Neutral]: Maybe if you help me with my problem then I’ll help you.

# MC: If it is about trying to conquer Anutta then it is a big no.

# Merax [Annoyed]: Why do you always assume that my agenda relates to your city.
# Merax [Neutral]: What I really need is something to alleviate the annoyance that is grocery shopping to me.

# MC: You dislike grocery shopping?

# Merax [Neutral]: Far from it, I actually enjoy shopping, especially discovering new concoctions to add to my recipes.

# Merax [Neutral]: My problem is more the process of it.

# Merax [Annoyed]: Whenever I try to come to town to make my purchases I’m often shunned and people kick me out of the store. A little girl even kicked me while I was selecting oranges.

# Merax [Neutral]: I even tried to come in with a face mask so that people do not know it is me, but they ended up calling the police because I looked like a robber.

# MC: Wow, that sounds bad. Have you tried shopping online and having them deliver it at your place?

# Merax [Annoyed]: This is an additional set of complications. The delivery persons do not want to deliver it at my place. They leave my goods 10 minutes away from my home every time.

# Merax [Annoyed]: It is supposedly because my place looks too scary or that they fear for their safety, at least based on what customer service said to me.

# Merax [Neutral]: This is very presumptuous of them as I have no use of delivery men and again,  I do not intend to work when I’m not getting paid.

# Merax [Neutral]: So, what do you intend to do to resolve my situation?

# (choice 5)
# “Make the facade of your house more appealing?”

# MC: “If it scares the delivery persons, maybe if you make it less intimidating it will be better?”

# Merax [Neutral]: I really would like to alter it too, probably in a cozy cabin style but the evil league requires an equally villainous appearance.

# MC: What if you just changed jobs then? You seem pretty annoyed by your league.

# Merax [Neutral]: It was actually my last available option. I first tried to open up my own bakery but was constantly berated by the others.

# Merax [Neutral]: Their gross behaviour would drive away all the customers.

# Merax [Neutral]: I tried many other different occupations such as a postman, a news host on the television and even a waiter at McDonut.

# Merax [Neutral]: They never worked out because people were always intimidated by someone like me even if I stipulated my intentions.

# MC: This is really sad.

# Merax [Neutral]: It definitely is, the way your people view every of mine as evil.

# “Maybe if you remove your mask?”

# Merax [Annoyed]: Preposterous!

# MC: Whaaaat!

# Merax [Annoyed]: It’s the equivalent of telling you humans to walk around nude.

# Merax [Annoyed]: I swear these days people are so rude.

# MC: I’m sorry I guess.

# “Maybe you wear a specific non-scary outfit to go shopping?”

# MC: It would be your official shopping outfit, where most people would know that you are only coming to town to do your non-evil business.

# Merax [Neutral]: I suppose it might work, but word of the outfit must be made clear to everyone.

# Merax [Neutral]: I will be very honest with you though, the thought of always wearing the same outfit every time for this task is very unappealing. 

# MC: But it is just an outfit?

# Merax [Neutral]: Why should I not be allowed to switch up my shopping accoutrement like humans though.

# Merax [Neutral]: Hmpf…

# MC: …

# Merax [Neutral]: …

# MC: So… uh… Can I count on your support?

# Merax [Neutral]: I shall consider your request and give you a response in a few days.

# MC: But why not right now?

# Merax [Neutral]: Because I have work to plan for. I have a family reunion the day tomorrow and then a league meeting the day after. I can only make an attack attempt on the town after then.

# MC: Why don’t you simply cancel the attack?

# Merax [Neutral]: If I do so, I would miss out on the quota of two attacks minimum per week.

# MC: But-

# Merax [Smug]: Please, I believe we have reached the end of our conversation. I have to find an effective strategy that will work with my limited schedule and do not worry, I will send you the results of my musings on your proposition.

# Merax [Neutral]: Do you have any last words?

# (choice 6)
# “Do you have any more cookies left?”
#     {
#     Merax [Joy]: I do, lemme fetch a box so you can pack it on our way home.

#     Chester: Thank you, they are just really good.

#     Merax [Joy]: I’m glad you enjoy my baking. If you want I can be more experimental next time and try to include poison?

#     MC: I-I think I’m good with the classic ingredients…

#     Merax [Joy]: I was only fiddling around. Please do not worry.

#     Merax [Neutral]: Either way. Farewell and I wish you good day and luck on your quest.
# }
    
# “Are you sure you cannot delay your attack?”

# MC: You know i’m in a very tough sp-

# Merax [Neutral]: No.

# MC:  Bu-

# Merax [Neutral]: No need to insist. My stance is final. It is a no.

# MC: …

# MC: Well I hope your next batch of cookies turn out wrong!

# Merax [Neutral]: What a rude little rodent. Now out of my place. What if you have some bubonic disease on you!?

# MC: I’M NOT A RAT!

#     }

# “Have a good time with your family.”
# {

# Merax [Neutral]: Thank you very much, although I doubt it would be the case.

# Merax [Confused]: You know very well how family reunions always are…

# Merax [Neutral]: Oh my apologies, that was rather insensitive from me.

# MC: It’s cool… The whole town is my family.

# MC : “But It sure does feel like I’m the neglected middle kid.”
# Merax [Neutral]: Either way, have a good day. I need to prepare myself.
# }
