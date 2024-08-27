
# Village Names Datapack
_Created by FancyPotatOS_


Yes, I ripped the name generator from [Fantasy Name Generators](https://www.fantasynamegenerators.com/fantasy-town-names.php)

This is a very straightforward datapack - any 'townsfolk' (villagers and iron golems) will be assigned a randomly generated 'town name'.

This name will appear as a subtitle when you approach the group of townsfolk

Keep in mind that townsfolk will 'infected' other townsfolk with their village name, so mixing together two villages will eventually decide on one.


### Random details

There are two function tags you can latch onto:

- towcit:entered_village
  - Is called when the player is provided the name of a village
- towcit:exited_village
  - Is called when the player leaves the village, which enables the message to be displayed again

There are current future plans to have things like static markers when a village is created to mark it, and other function tags available to utilize.
