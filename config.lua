Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DEL'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}

Config = {}

Config.jobrequirement = false --whether work requires a job
Config.jobname = 'police' --name of the job that is required

Config.Payout = {
    copper = 200,
    iron = 500,
    molibden = 1000,
    zinc = 2000,
    lead = 3000,
    silver = 3500,
    tin = 4000,
    diamonds = 5400,
}

Config.miner = {
	['BossSpawn'] = { 
		Pos = {x = 2950.07, y = 2745.89, z = 43.42, h = 17.35}, 
		Type  = 's_m_m_dockwork_01', --model ped
    },  
    ['Pickaxeplace'] = {
        Pos = {x = 2956.89, y = 2744.47, z = 43.59, h = 280.51},
        Type  = 'a_m_m_fatlatin_01', --model ped
    },
    ['Sell'] = {
        Pos = {x = 2942.72, y = 2742.89, z = 43.35, h = 312.74},
        Type  = 'a_m_m_fatlatin_01', --model ped
    },
}

Config.Pickaxe = {
    [1] = {name = 'wooden', color = '~m~', price = 0},
    [2] = {name = 'copper', color = '~o~', price = 450},
    [3] = {name = 'stone', color = '~c~', price = 1350},
    [4] = {name = 'gold', color = '~y~', price = 2150},
    [5] = {name = 'silver', color = '~c~', price = 3100},
    [6] = {name = 'iron', color = '~w~', price = 4300},
    [7] = {name = 'diamond', color = '~b~', price = 5600},
}

Config.ExpDrop = {min = 1, max=2}

Config.Levels = {
    [1] = {anim = 5, dropmin = 1, dropmax = 2, exp = 0},
    [2] = {anim = 5, dropmin = 1, dropmax = 3, exp = 60},
    [3] = {anim = 4, dropmin = 1, dropmax = 4, exp = 100},
    [4] = {anim = 4, dropmin = 1, dropmax = 5, exp = 130},
    [5] = {anim = 4, dropmin = 2, dropmax = 3, exp = 180},
    [6] = {anim = 3, dropmin = 2, dropmax = 4, exp = 230},
    [7] = {anim = 3, dropmin = 2, dropmax = 5, exp = 270},
    [8] = {anim = 2, dropmin = 3, dropmax = 4, exp = 310},
    [9] = {anim = 2, dropmin = 3, dropmax = 5, exp = 360},
    [10] = {anim = 1, dropmin = 3, dropmax = 6, exp = 405},
}

Config.MinePlaces = {
    ['wooden'] = {
        Pos = {x = 2949.67, y = 2771.79, z = 39.05, h = 261.90, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 17, type = 652},
        Drop = {
            copper = true,
            iron = true,
            molibden = false,
            zinc = false,
            lead = false,
            silver = false,
            tin = false,
            diamonds = false,
        }
    },
    ['copper'] ={
        Pos = {x = 2993.91, y = 2755.99, z = 42.89, h = 312.68, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = true,
            iron = true,
            molibden = true,
            zinc = false,
            lead = false,
            silver = false,
            tin = false,
            diamonds = false,
        }
    },
    ['stone'] ={
        Pos = {x = 2974.27, y = 2778.34, z = 38.47, h = 28.16, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = false,
            iron = true,
            molibden = true,
            zinc = true,
            lead = false,
            silver = false,
            tin = false,
            diamonds = false,
        }
    },
    ['gold'] ={
        Pos = {x = 2973.42, y = 2795.07, z = 40.87, h = 74.97, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = false,
            iron = true,
            molibden = true,
            zinc = true,
            lead = true,
            silver = false,
            tin = false,
            diamonds = false,
        }
    },
    ['silver'] ={
        Pos = {x = 2947.82, y = 2816.94, z = 42.40, h = 38.88, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = false,
            iron = false,
            molibden = true,
            zinc = true,
            lead = true,
            silver = true,
            tin = false,
            diamonds = false,
        }
    },
    ['iron'] ={
        Pos = {x = 2922.19, y = 2795.16, z = 40.75, h = 141.94, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = false,
            iron = false,
            molibden = false,
            zinc = true,
            lead = true,
            silver = true,
            tin = true,
            diamonds = false,
        }
    },
    ['diamond'] ={
        Pos = {x = 2916.46, y = 2779.02, z = 43.88, h = 45.67, scaleX = 5.0, scaleY = 5.0, scaleZ = 1.0},
        Blip = {color = 39, type = 652},
        Drop = {
            copper = false,
            iron = false,
            molibden = false,
            zinc = false,
            lead = true,
            silver = true,
            tin = true,
            diamonds = true,
        }
    },
}

Config.Clothes = {
        male = {
            ['tshirt_1'] = 59,  ['tshirt_2'] = 1,
            ['torso_1'] = 5,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 5,
            ['pants_1'] = 8,   ['pants_2'] = 0,
            ['shoes_1'] = 12,   ['shoes_2'] = 3,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['helmet_1'] = 0,  ['helmet_2'] = 0,
            ['ears_1'] = -1,     ['ears_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        },
        female = {
            ['tshirt_1'] = 36,  ['tshirt_2'] = 1,
            ['torso_1'] = 73,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 74,   ['pants_2'] = 0,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['chain_1'] = -1,    ['chain_2'] = 0,
            ['helmet_1'] = 0,  ['helmet_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        }    
}

