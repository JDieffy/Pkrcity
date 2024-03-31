#------------InventarWipe------------------
clear @a

#------------Teleport zum Start-----------------
forceload add 17 20 227 230

#------------Scoreboards zurücksetzen---------------
scoreboard players set @a Turm1 0
scoreboard players set @a Turm2 0
scoreboard players set @a Feuerli 1
scoreboard players set @a Hex 1
scoreboard players set @a Ice 0
scoreboard players set @a Rausschmiss 1
scoreboard players set @a cutscene 1
scoreboard players set @a Ubahn1 0
scoreboard players set @a TurmHex 0
scoreboard players set @a Button 0
scoreboard players set @a Winner 0
scoreboard players set @a TowerTP 0
scoreboard players set @a Button2 0
scoreboard players set @a Button3 0
scoreboard players set @a Button4 0
scoreboard players set @a Button5 0
scoreboard players set @a Button6 0
scoreboard players set @a Button7 0
scoreboard players set @a Button8 0
scoreboard players set @a Button9 0
scoreboard players set @a Button10 0
scoreboard players set @a Button11 0
scoreboard players set @a Button12 0

#---------------Buttons zurücksetzen----------------
setblock 51 -13 102 minecraft:oak_button[face=wall,facing=west]
setblock 145 -25 165 minecraft:redstone_block
setblock 150 -26 165 minecraft:redstone_block

setblock 88 -11 213 minecraft:stone_button[face=wall,facing=north]
setblock 209 -24 67 minecraft:stone_button[face=wall,facing=west]
setblock 105 -12 36 minecraft:stone_button[face=wall,facing=west]
setblock 51 -9 160 minecraft:stone_button[face=wall,facing=north]
setblock 79 1 206 minecraft:stone_button[face=wall,facing=south]
setblock 103 -1 199 minecraft:stone_button[face=wall,facing=south]
setblock 200 -9 206 minecraft:stone_button[face=wall,facing=south]
setblock 102 -9 52 minecraft:stone_button[face=wall,facing=east]
setblock 69 5 85 minecraft:stone_button[face=wall,facing=north]
setblock 149 0 116 minecraft:stone_button[face=wall,facing=west]
setblock 54 -11 59 minecraft:stone_button[face=wall,facing=south]

#---------------Alle Türen schließen----------------

setblock 97 -6 217 air
fill 98 -6 217 99 -6 217 air
fill 98 -6 218 99 -6 218 air
fill 174 -8 210 176 -8 212 air replace minecraft:crimson_trapdoor
setblock 185 -21 217 air
fill 225 -4 168 226 -4 168 air
setblock 220 -3 132 air
fill 212 -3 133 212 -3 130 air
setblock 208 -2 138 air
fill 209 -3 134 211 -3 134 air
setblock 208 -2 143 air
fill 209 -1 134 210 -1 134 air
setblock 218 4 95 air
setblock 218 6 95 air
setblock 208 -18 71 air
setblock 215 14 91 air
setblock 220 -30 65 air
setblock 207 -13 58 air
setblock 222 -12 40 air
setblock 222 -12 39 air
setblock 222 -12 23 air
setblock 223 -12 33 air
setblock 223 -12 31 air
setblock 216 0 25 air
setblock 191 -12 34 air
setblock 203 -11 40 air
setblock 187 16 22 air
setblock 189 -12 31 air
setblock 164 -21 38 air
setblock 176 -25 33 air
setblock 163 -21 35 air
setblock 159 -13 37 air
setblock 139 -11 23 air
setblock 136 -12 25 air
setblock 140 -7 23 air
setblock 107 -11 35 air
fill 73 -11 28 77 -11 28 air replace spruce_door
setblock 77 -10 26 air
setblock 71 -5 25 air
setblock 75 -8 27 air
setblock 69 -5 25 air
fill 54 -10 53 54 -10 56 minecraft:oak_log[axis=z]
fill 46 -12 44 58 -8 52 air replace oak_log
fill 46 -1 99 50 -1 100 air replace oak_log
fill 46 -1 101 50 -1 101 oak_log[axis=x]
setblock 40 -7 156 air
setblock 44 11 157 air
setblock 51 0 153 air
setblock 44 10 157 air
fill 48 12 146 49 12 158 air replace acacia_door
setblock 48 11 145 air
setblock 49 11 145 air
setblock 71 -4 190 air
setblock 79 0 189 air
setblock 78 -3 201 air
fill 155 -16 198 156 -16 198 air
setblock 151 -17 195 air
setblock 152 -17 195 air
setblock 196 -5 195 air
setblock 195 -10 197 air
setblock 196 -10 197 air
setblock 204 -9 134 air
setblock 188 -1 144 air
fill 194 -1 143 195 -1 143 air
fill 197 -1 141 197 -1 140 air
setblock 205 -7 112 air
setblock 189 -1 110 air
setblock 196 0 123 air
setblock 188 2 110 minecraft:air
setblock 369 -11 148 air
fill 167 2 42 166 2 42 air
setblock 151 -12 59 air
setblock 151 -12 58 air
setblock 70 1 86 air
setblock 71 1 86 air
setblock 69 1 85 air
fill 71 -5 88 70 -5 88 air
setblock 70 -4 86 air
setblock 71 -4 86 air
#---------------Map zurücksetzen--------------------

#Burg
setblock 16 -12 130 minecraft:redstone_block
fill 57 8 142 57 9 142 minecraft:light_blue_stained_glass_pane
setblock 41 -13 149 air
fill 47 -7 123 50 -4 123 oak_fence replace air
setblock 48 -2 107 stone_button[face=floor,facing=south]

#Rüdiger1
setblock 119 -8 210 minecraft:iron_door[facing=east,half=lower]
setblock 119 -7 210 minecraft:iron_door[facing=east,half=upper]
setblock 113 -15 220 minecraft:iron_bars

#Stadt, Tür schließen
fill 185 -13 36 185 -13 41 air replace minecraft:redstone_block

#Vorstadt (nach Kasimir) Türen schließen
setblock 156 -9 23 air
setblock 153 -9 23 air

#Flaschenzug
setblock 73 -12 19 minecraft:redstone_block

#Eislevel (Durchbruch)
setblock 76 -12 150 minecraft:redstone_block

#Rüdiger2
setblock 123 -23 92 minecraft:redstone_block

#Turmeingang
fill 105 -1 104 106 -1 104 water

#Rüdigers Tod
setblock 122 92 123 air
setblock 122 93 123 air
setblock 117 -19 119 minecraft:redstone_block
setblock 121 -12 235 minecraft:redstone_wire
setblock 121 -12 234 air
setblock 139 -12 234 minecraft:redstone_block
setblock 160 -10 18 minecraft:redstone_wire
setblock 163 -10 18 minecraft:redstone_wire
setblock 161 -10 18 minecraft:redstone_block

#Resetti von Resettern
schedule function clearer:clean 1s