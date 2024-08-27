#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#

tellraw @a ["",{"text":"[Village Names Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version towcit.master matches 1.. run function towcit:meta/migrate/migration_v0

# Set this as the latest version number
scoreboard players set version towcit.master 1

# # Setup scoreboards
# Town ID for retrieving the name of the village
scoreboard objectives add towcit.id dummy

# # Storage
#declare storage towcit:data

# names: The list of town names to pull from
data modify storage towcit:data names set value []

# Add the fantasy town generation values
data modify storage towcit:data fantasy set value {nm1: ['Amber', 'Angel', 'Spirit', 'Basin', 'Lagoon', 'Basin', 'Arrow', 'Autumn', 'Bare', 'Bay', 'Beach', 'Bear', 'Bell', 'Black', 'Bleak', 'Blind', 'Bone', 'Boulder', 'Bridge', 'Brine', 'Brittle', 'Bronze', 'Castle', 'Cave', 'Chill', 'Clay', 'Clear', 'Cliff', 'Cloud', 'Cold', 'Crag', 'Crow', 'Crystal', 'Curse', 'Dark', 'Dawn', 'Dead', 'Deep', 'Deer', 'Demon', 'Dew', 'Dim', 'Dire', 'Dirt', 'Dog', 'Dragon', 'Dry', 'Dusk', 'Dust', 'Eagle', 'Earth', 'East', 'Ebon', 'Edge', 'Elder', 'Ember', 'Ever', 'Fair', 'Fall', 'False', 'Far', 'Fay', 'Fear', 'Flame', 'Flat', 'Frey', 'Frost', 'Ghost', 'Glimmer', 'Gloom', 'Gold', 'Grass', 'Gray', 'Green', 'Grim', 'Grime', 'Hazel', 'Heart', 'High', 'Hollow', 'Honey', 'Hound', 'Ice', 'Iron', 'Kil', 'Knight', 'Lake', 'Last', 'Light', 'Lime', 'Little', 'Lost', 'Mad', 'Mage', 'Maple', 'Mid', 'Might', 'Mill', 'Mist', 'Moon', 'Moss', 'Mud', 'Mute', 'Myth', 'Never', 'New', 'Night', 'North', 'Oaken', 'Ocean', 'Old', 'Ox', 'Pearl', 'Pine', 'Pond', 'Pure', 'Quick', 'Rage', 'Raven', 'Red', 'Rime', 'River', 'Rock', 'Rogue', 'Rose', 'Rust', 'Salt', 'Sand', 'Scorch', 'Shade', 'Shadow', 'Shimmer', 'Shroud', 'Silent', 'Silk', 'Silver', 'Sleek', 'Sleet', 'Sly', 'Small', 'Smooth', 'Snake', 'Snow', 'South', 'Spring', 'Stag', 'Star', 'Steam', 'Steel', 'Steep', 'Still', 'Stone', 'Storm', 'Summer', 'Sun', 'Swamp', 'Swan', 'Swift', 'Thorn', 'Timber', 'Trade', 'West', 'Whale', 'Whit', 'White', 'Wild', 'Wilde', 'Wind', 'Winter', 'Wolf'], nm2: ['acre', 'band', 'barrow', 'bay', 'bell', 'born', 'borough', 'bourne', 'breach', 'break', 'brook', 'burgh', 'burn', 'bury', 'cairn', 'call', 'chill', 'cliff', 'coast', 'crest', 'cross', 'dale', 'denn', 'drift', 'fair', 'fall', 'falls', 'fell', 'field', 'ford', 'forest', 'fort', 'front', 'frost', 'garde', 'gate', 'glen', 'grasp', 'grave', 'grove', 'guard', 'gulch', 'gulf', 'hall', 'hallow', 'ham', 'hand', 'harbor', 'haven', 'helm', 'hill', 'hold', 'holde', 'hollow', 'horn', 'host', 'keep', 'land', 'light', 'maw', 'meadow', 'mere', 'mire', 'mond', 'moor', 'more', 'mount', 'mouth', 'pass', 'peak', 'point', 'pond', 'port', 'post', 'reach', 'rest', 'rock', 'run', 'scar', 'shade', 'shear', 'shell', 'shield', 'shore', 'shire', 'side', 'spell', 'spire', 'stall', 'wich', 'minster', 'star', 'storm', 'strand', 'summit', 'tide', 'town', 'vale', 'valley', 'vault', 'vein', 'view', 'ville', 'wall', 'wallow', 'ward', 'watch', 'water', 'well', 'wharf', 'wick', 'wind', 'wood', 'yard']}

# # Config values
# Clock to check for village/updates: 1 second
scoreboard players set clock towcit.master 20
scoreboard players set next_id towcit.master 0

# # Config Triggers
scoreboard objectives add village_name_display trigger
