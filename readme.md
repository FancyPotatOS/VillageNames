
# Village Names Datapack
_Created by FancyPotatOS_


Yes, I ripped the name generator from [Fantasy Name Generators](https://www.fantasynamegenerators.com/fantasy-town-names.php)

This is a very straightforward datapack - any 'townsfolk' (villagers and iron golems) will be assigned a randomly generated 'town name'.

This name will appear as a subtitle when you approach the group of townsfolk

Keep in mind that townsfolk will 'infect' other townsfolk with their village name, so mixing together two villages will eventually decide on one.


Players may toggle displaying village names with the trigger `/trigger village_name_display` 

### API

There are three function tags you can use:

- `#towcit:entered_village`
  - This is called when the player is provided the name of a village
- `#towcit:exited_village`
  - This is called when the player leaves the village, which enables the message to be displayed again
- `#towcit:generate_name`
  - This is called when a villager needs a new village name
  - You can use this to add your own name generation type
  - You must do three things:
    1. Append a _unique identifier_ to the storage list `towcit:data generation_types`
    2. Create a function connected to this function tag
      - Within this function, return immediately if the storage `towcit:data generation_type` does not match your _unique identifier_
    3. Append your generated village name to the storage list `towcit:data names`
      - If you fail to do so, this will break the datapack! Be safe and ensure SOMETHING will get added!

