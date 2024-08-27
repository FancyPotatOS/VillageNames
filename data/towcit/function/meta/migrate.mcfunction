
# Ensure the master scoreboard exists
scoreboard objectives add towcit.master dummy

# Apply migration if required
execute unless score version towcit.master matches 1.. run function towcit:meta/migrations/latest_version
