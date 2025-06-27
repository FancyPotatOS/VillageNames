#
#   Migration File V2
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version towcit.master matches 1.. run function towcit:meta/migrations/migration_v0

# Set this as the latest version number
scoreboard players set version towcit.master 2

data modify storage towcit:data generation_types set value [ "towcit:fantasy" ]

