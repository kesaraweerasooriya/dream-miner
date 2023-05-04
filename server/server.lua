local QBCore = exports['qb-core']:GetCoreObject()
RegisterServerEvent('dream-miner:mine')
AddEventHandler('dream-miner:mine', function(Pickaxe, Level)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    while true do
        random = math.random(1,100)
        if random >= 70 and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.copper then
            xPlayer.Functions.AddItem('dream-copper', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 70 and random >= 50) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.iron then
            xPlayer.Functions.AddItem('dream-iron', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 50 and random >= 40) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.molibden then
            xPlayer.Functions.AddItem('dream-molibden', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 40 and random >= 30) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.zinc then
            xPlayer.Functions.AddItem('dream-zinc', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 30 and random >= 20) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.lead then
            xPlayer.Functions.AddItem('dream-lead', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 20 and random >= 10) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.silver then
            xPlayer.Functions.AddItem('dream-silver', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 10 and random >= 5) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.tin then
            xPlayer.Functions.AddItem('dream-tin', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 5 and random >= 1) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.diamonds then
            xPlayer.Functions.AddItem('dream-diamonds', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        end
    end
end)

QBCore.Functions.CreateCallback('dream-miner:upgrade', function(source, cb, pickaxe)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.PlayerData.money.cash >= Config.Pickaxe[pickaxe+1].price then
        print('work')
        xPlayer.Functions.RemoveMoney('cash', Config.Pickaxe[pickaxe+1].price)

            local result = exports.ghmattimysql:executeSync('SELECT * FROM dream_jobs WHERE identifier=@identifier AND job=@job', {
                ['@identifier'] = xPlayer.PlayerData.citizenid, 
                ['@job'] = 'miner'
            })
            print('work6')
            if result[1] ~= nil then
                print('work7')
                exports.ghmattimysql:execute('UPDATE dream_jobs SET pickaxe = @pickaxe WHERE identifier=@identifier AND job=@job', {
                    ['@pickaxe']   = pickaxe+1,
                    ['@identifier'] = xPlayer.PlayerData.citizenid,
                    ['@job'] = 'miner',
                })
            end
            print('work2')
		cb(true)
    elseif xPlayer.PlayerData.money.bank >= Config.Pickaxe[pickaxe+1].price then
        xPlayer.Functions.RemoveMoney('bank', Config.Pickaxe[pickaxe+1].price)
        print('work3')
            local result = exports.ghmattimysql:executeSync('SELECT * FROM dream_jobs WHERE identifier=@identifier AND job=@job', {
                ['@identifier'] = xPlayer.PlayerData.citizenid, 
                ['@job'] = 'miner'
            })
            if result[1] ~= nil then
                exports.ghmattimysql:execute('UPDATE dream_jobs SET pickaxe = @pickaxe WHERE identifier=@identifier AND job=@job', {
                    ['@pickaxe']   = pickaxe+1,
                    ['@identifier'] = xPlayer.PlayerData.citizenid,
                    ['@job'] = 'miner',
                })
            end
            print('work4')

        cb(true)
	else
		cb(false)
	end
end)

QBCore.Functions.CreateCallback('dream-miner:payout', function(source, cb, exp)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    
    local copper = xPlayer.Functions.GetItemByName('dream-copper')
	local iron = xPlayer.Functions.GetItemByName('dream-iron')
    local molibden = xPlayer.Functions.GetItemByName('dream-molibden')
	local zinc = xPlayer.Functions.GetItemByName('dream-zinc')
    local lead = xPlayer.Functions.GetItemByName('dream-lead')
	local silver = xPlayer.Functions.GetItemByName('dream-silver')
    local tin = xPlayer.Functions.GetItemByName('dream-tin')
	local diamonds = xPlayer.Functions.GetItemByName('dream-diamonds')

    
    local Payout = 0 
    if copper ~= nil then
        Payout = Config.Payout.copper * copper.amount
    end
    if iron ~= nil then
        Payout = Payout + Config.Payout.iron * iron.amount
    end
    if molibden ~= nil then
        Payout = Payout + Config.Payout.molibden * molibden.amount
    end
    if zinc ~= nil then
        Payout = Payout + Config.Payout.zinc * zinc.amount
    end
    if lead ~= nil then
        Payout = Payout + Config.Payout.lead * lead.amount
    end
    if silver ~= nil then
        Payout = Payout + Config.Payout.silver * silver.amount
    end
    if tin ~= nil then
        Payout = Payout + Config.Payout.tin * tin.amount
    end
    if diamonds ~= nil then
        Payout = Payout + Config.Payout.tin * diamonds.amount
    end


    local ore = 0
    if copper ~= nil then 
        xPlayer.Functions.RemoveItem('dream-copper', copper.amount)
        ore = ore + copper.amount
    end
    if iron ~= nil then
        xPlayer.Functions.RemoveItem('dream-iron', iron.amount)
        ore = ore + iron.amount
    end
    if molibden ~= nil then
        xPlayer.Functions.RemoveItem('dream-molibden', molibden.amount)
        ore = ore + molibden.amount
    end
    if zinc ~= nil then
        xPlayer.Functions.RemoveItem('dream-zinc', zinc.amount)
        ore = ore + zinc.amount
    end
    if lead ~= nil then
        xPlayer.Functions.RemoveItem('dream-lead', lead.amount)
        ore = ore + lead.amount
    end
    if silver ~= nil then
        xPlayer.Functions.RemoveItem('dream-silver', silver.amount)
        ore = ore + silver.amount
    end
    if tin ~= nil then
        xPlayer.Functions.RemoveItem('dream-tin', tin.amount)
        ore = ore + tin.amount
    end
    if diamonds ~= nil then
        xPlayer.Functions.RemoveItem('dream-diamonds', diamonds.amount)
        ore = ore + diamonds.amount
    end

    if ore == 0 then
        cb(false)
    end

    xPlayer.Functions.AddMoney('cash', Payout)

    local Experience = 0
    if ore > 5 then
        Experience = math.random(Config.ExpDrop.min,Config.ExpDrop.max) * ore

        local result = exports.ghmattimysql:executeSync('SELECT * FROM dream_jobs WHERE identifier=@identifier AND job=@job', {
            ['@identifier'] = xPlayer.PlayerData.citizenid, 
            ['@job'] = 'miner'
        })
        if result[1] ~= nil then
            exports.ghmattimysql:execute('UPDATE dream_jobs SET experience = @experience WHERE identifier=@identifier AND job=@job', {
                ['@experience'] = exp+Experience,
                ['@identifier'] = xPlayer.PlayerData.citizenid,
                ['@job'] = 'miner',
            })
        end
    end

    cb(Payout, ore, Experience)

end)

QBCore.Functions.CreateCallback('dream-miner:getdatabase', function(source, cb, xPlayer)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local result = exports.ghmattimysql:executeSync('SELECT * FROM dream_jobs WHERE identifier=@identifier AND job=@job', {
        ['@identifier'] = xPlayer.PlayerData.citizenid, 
        ['@job'] = 'miner'
    })
    if result[1] ~= nil then
        cb(tonumber(result[1].experience),tonumber(result[1].pickaxe)) 
    else
        exports.ghmattimysql:execute('INSERT INTO dream_jobs (identifier,experience,pickaxe,job) VALUES (@identifier,@experience,@pickaxe,@job)', {
            ['@identifier'] = xPlayer.PlayerData.citizenid, 
            ['@experience'] = 0,
            ['@pickaxe'] = 1,
            ['@job'] = 'miner',
        })
    end

end)


