# run once on startup when do /reload is called. and its trying to run a function called ini_message (currently not implemented i used advancements to do this)
execute as @p at @a run tellraw @a {"text":"Loading Automate Functions...", "color":"green"}
execute as @p at @a run function automate:_global/global/automate_global_mesage

scoreboard objectives add automate_cauldron_trigger dummy
