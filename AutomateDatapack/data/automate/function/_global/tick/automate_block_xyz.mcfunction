# Debug message
# tellraw @a {"text":"automate_block_xyz.mcfunction executed", "color":"yellow"}

# Get the coordinates of the placed block
execute as @a[scores={automate_placed_furnace=1..}] at @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["automate_furnace"]}
execute as @a[scores={automate_placed_blast_furnace=1..}] at @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["automate_furnace"]}
execute as @a[scores={automate_placed_smoker=1..}] at @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["automate_furnace"]}

execute as @a[scores={automate_placed_cauldron=1..}] at @s run function automate:_global/tick/automate_get_block_coords

# Reset the placed block score
scoreboard players set @a automate_placed_furnace 0
scoreboard players set @a automate_placed_blast_furnace 0
scoreboard players set @a automate_placed_smoker 0
scoreboard players set @a automate_placed_cauldron 0