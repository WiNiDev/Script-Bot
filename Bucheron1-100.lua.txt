--======Paramètres======--
OPEN_BAGS = true
AUTO_FOLLOW = true
AUTO_DELETE = {10792,10793,10795,10796,10801,8545,10797,10784,10798,1079,10794,10785,10800,6897,8230,287,1734,6902,8213,8217,2475,6900,761,1975,689,854}
IDItem1 = 303  --bois de fréne
IDItem2 = 473 --Chataigner
IDItem3 = 476 --Noyer
IDItem4 = 471 --Erable
IDItem5 = 460 --Chene
IDItem6 = 35 --Merisier

--======================--

function learnJob()
    npc:npc(849, 3)
	global:delay(2500)
    npc:reply(-1)
	global:delay(2500)
    npc:reply(-4) 
	global:delay(2500)
	npc:reply(-1)
	global:delay(2500)
	npc:leaveDialog()
end


function goAstrub()
	--===== Mise à jour des boolean ====--
	Incarnam = false
	combatAstrub = true
	--==================================--
    npc:npc(888,3)
	global:delay(2500)
    npc:reply(-1)
	global:delay(2500)
    npc:reply(-1)
    global:printSuccess("Transfert vers Astrub")
	global:delay(2500)
	npc:reply(-1)
	npc:leaveDialog()
	
end

function selling()
    if inventory:itemCount(IDItem1) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem1, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem1) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem1, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente de 10 [Bois de Frene] reussie...") 
		 end
    end

    if inventory:itemCount(IDItem1) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end

    if inventory:itemCount(IDItem2) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem2, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem2) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem2, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente de 10 [Bois de Chataigner] reussie...") 
		 end
    end

    if inventory:itemCount(IDItem2) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end

    if inventory:itemCount(IDItem3) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem3, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem3) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem3, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente de 10 [Bois de Noyer] reussie...") 
		 end
    end

    if inventory:itemCount(IDItem3) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end

    if inventory:itemCount(IDItem4) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem4, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem4) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem4, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente de 10 [Bois d'Erable] reussie...") 
		 end
    end

    if inventory:itemCount(IDItem4) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end

    if inventory:itemCount(IDItem5) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem5, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem5) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem5, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente reussie...") 
		 end	
    end

    if inventory:itemCount(IDItem5) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end

    if inventory:itemCount(IDItem6) > 9  and character:kamas() > 100 then
    npc:npcSale()
    if sale:availableSpace() == 0 then
    	global:printSuccess("[Error] Hdv plein ! On actualise prix et on reconnecte dans 30mn...")
    	sale:updateAllItems()
    	global:reconnect(0.5)
    end
	  Priceitem = sale:getPriceItem(IDItem6, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem6) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem6, 10, Priceitem -1)
        	  end
        	  
       		  global:leaveDialog()
       		  global:printSuccess("Mise en vente reussie...") 
		 end	
    end

    if inventory:itemCount(IDItem6) > 9  and character:kamas() <= 100 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
	Refill = true
    end
end

function getKamas()
	npc:npcBank(-1)
	global:delay(500)
	kamas = exchange:storageKamas()
	exchange:getKamas(kamas) 
	global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
	npc:leaveDialog()
	Refill = false
	goAmakna = true
end
function Banque()
	npc:npcBank(-1)
	global:delay(500)
	exchange:putAllItemsExchange() -- met tout les items de l'inventaire dans la banque 
	kamas = exchange:storageKamas()
	exchange:getKamas(kamas)
	global:printSuccess("[Info] On a pris " ..kamas.. " K dans la banque.")
	npc:leaveDialog()
	global:printSuccess("L'inventaire a été vidé avec succès !")
end

function move()
	if map:currentMapId() == 9095051 then
		goAmakna = true
	end
	if character:level() > 19 and character:kamas() > 100 then
		combatAstrub = false
		goAmakna = true
		Refill = false
	end
	if character:level() > 19 and character:kamas() <= 100 then
		goAmakna = false
		combatAstrub = false
		Refill = true
	end

	if character:level() < 20 then
		combatAstrub = true
		goAmakna = false
	end

	if combatAstrub then 
		if character:level() <= 5 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 1
		end
		if character:level() > 5 and character:level() <= 10 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 2
		end
		if character:level() > 10 and character:level() < 20 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 3
		end
		return {
			{ map="-5,-1", path = "bottom" },   --dessente incarnam
			{ map="-4,0", path = "right" },
			{ map="-3,1", path = "right" },
			{ map="-2,2", path = "bottom" },
			{ map="0,3", path = "right" },
			{ map="1,3", path = "right" },
			{ map="2,3", path = "right" },
			{ map="3,3", path = "right" },
			{ map="4,3", custom = learnJob, path = "right" },
			{ map="5,3", path = "right" },
			{ map="6,3", path = "right" },
			{ map="7,3", path = "right" },
			{ map="8,3", path = "right" },
			{ map = "80220676", custom = goAstrub },
			--=========== Phénix => Pious ===========--
			{map = "2,-12", path = "right" },
			{map = "3,-12", path = "right" },
			{map = "4,-12", path = "top" },
			{map = "4,-13", path = "top" },
			{map = "4,-14", path = "top" },
			{map = "4,-15", path = "left" },
			--=======================================--

			--========= Combats Astrub ===========--
			{map = "-1,-14", fight = true,  path = "right" },
			{map = "0,-14", fight = true,  path = "right" },
			{map = "1,-14", fight = true,  path = "right" },
			{map = "2,-14", fight = true,  path = "right" },
			{map = "3,-14", fight = true,  path = "top" },
			{map = "3,-15", fight = true,  path = "top" },
			{map = "3,-16", fight = true,  path = "right" },
			{map = "4,-16", fight = true,  path = "right" },
			{map = "5,-16", fight = true,  path = "right" },
			{map = "6,-16", fight = true,  path = "right" },
			{map = "7,-16", fight = true,  path = "top" },
			{map = "7,-17", fight = true,  path = "top" },
			{map = "7,-18", fight = true,  path = "top" },
			{map = "7,-19", fight = true,  path = "top" },
			{map = "7,-20", fight = true,  path = "top" },
			{map = "7,-21", fight = true,  path = "left" },
			{map = "6,-21", fight = true,  path = "bottom" },
			{map = "6,-20", fight = true,  path = "bottom" },
			{map = "6,-19", fight = true,  path = "left" },
			{map = "5,-19", fight = true,  path = "left"},
			{map = "4,-19", path = "left" },
			{map = "84674566", fight = true,  path = "right(139)" },
			{map = "3,-19", fight = true,  path = "top" },
			{map = "3,-20", fight = true,  path = "top" },
			{map = "3,-21", fight = true,  path = "top" },
			{map = "3,-22", fight = true,  path = "left" },
			{map = "2,-22", fight = true,  path = "left" },
			{map = "1,-22", fight = true,  path = "bottom" },
			{map = "1,-21", fight = true,  path = "bottom" },
			{map = "2,-20", fight = true, path = "left" },
			{map = "1,-20", fight = true,  path = "bottom" },
			{map = "1,-19", fight = true,  path = "left" },
			{map = "0,-19", fight = true,  path = "left" },
			{map = "-1,-19", fight = true,  path = "bottom" },
			{map = "-1,-18", fight = true,  path = "bottom" },
			{map = "-1,-17", fight = true,  path = "bottom" },
			{map = "-1,-16", fight = true,  path = "bottom" },
			{map = "-1,-15", fight = true,  path = "bottom" },
			{map = "83887104", path = "396" },
		}
	end

	if goAmakna then
 		selling()
		return {
		   { map = "-1,-21", path = "right" },
		   { map = "-1,-20", path = "right" },
		   { map = "-1,-19", path = "right" },
		   { map = "-1,-18", path = "right" },
		   { map = "-1,-17", path = "right" },
		   { map = "-1,-16", path = "right" },
		   { map = "-1,-15", path = "right" },
		   { map = "-1,-14", path = "right" },
		   { map = "0,-14", path = "right" },
		   { map = "1,-14", path = "right" },
		   { map = "2,-14", path = "right" },
		   { map = "3,-15", path = "right" },
		   { map = "3,-16", path = "right" },
		   { map = "3,-17", path = "right" },
		   { map = "3,-18", path = "right" },
		   { map = "3,-19", path = "right" },
		   { map = "3,-20", path = "right" },
		   { map = "3,-21", path = "right" },
		   { map = "3,-22", path = "right" },
		   { map = "1,-22", path = "right" },
		   { map = "2,-22", path = "right" },
		   { map = "1,-21", path = "right" },
		   { map = "0,-21", path = "right" },
		   { map = "2,-21", path = "right" },
		   { map = "2,-20", path = "right" },
		   { map = "1,-20", path = "right" },
		   { map = "0,-20", path = "right" },
		   { map = "0,-19", path = "right" },
		   { map = "1,-19", path = "right" },
		   { map = "2,-19", path = "right" },
		   { map = "2,-18", path = "right" },
		   { map = "0,-18", path = "right" },
		   { map = "1,-18", path = "top" },
		   { map = "3,-14", path = "top" },
		   { map = "0,-17", path = "right" },
		   { map = "1,-17", path = "right" },
		   { map = "2,-17", path = "right" },
		   { map = "2,-16", path = "right" },
		   { map = "1,-16", path = "right" },
		   { map = "0,-16", path = "right" },
		   { map = "0,-15", path = "right" },
		   { map = "1,-15", path = "right" },
		   { map = "2,-15", path = "right" },
		   { map = "7,-21", path = "left" },
		   { map = "7,-20", path = "left" },
		   { map = "7,-19", path = "left" },
		   { map = "7,-17", path = "left" },
		   { map = "7,-18", path = "left" },
		   { map = "7,-16", path = "left" },
		   { map = "7,-15", path = "left" },
		   { map = "6,-15", path = "left" },
		   { map = "5,-15", path = "left" },
		   { map = "5,-16", path = "left" },
		   { map = "6,-16", path = "left" },
		   { map = "5,-17", path = "left" },
		   { map = "5,-18", path = "left" },
		   { map = "6,-18", path = "left" },
		   { map = "6,-17", path = "left" },
		   { map = "6,-19", path = "left" },
		   { map = "5,-19", path = "left" },
		   { map = "5,-20", path = "left" },
		   { map = "6,-20", path = "left" },
		   { map = "6,-21", path = "left" },
		   { map = "5,-21", path = "left" },
		   { map = "5,-22", path = "left" },
		   { map = "4,-22", path = "bottom" },
		   { map = "4,-21", path = "bottom" },
		   { map = "4,-20", path = "bottom" },
		   { map = "4,-19", path = "bottom" },
		   { map = "4,-18", path = "bottom" },
		   { map = "4,-17", path = "bottom" },
		   { map = "4,-16", path = "bottom" },

		   { map = "4,-15", path = "bottom(556)" },
		   { map = "4,-16", path = "bottom" },
		   { map = "6,-19", path = "left" },
		   { map = "5,-19", path = "left" },
		   { map = "7,-19", path = "left" },
		   { map = "6,-17", path = "top" },
		   { map = "7,-17", path = "top" },
		   { map = "7,-16", path = "top" },
		   { map = "6,-16", path = "top" },
		   { map = "6,-18", path = "top" },
		   { map = "7,-18", path = "top" },
		   { map = "10,-21", path = "left" },
		   { map = "10,-20", path = "left" },
		   { map = "10,-19", path = "left" },
		   { map = "10,-18", path = "left" },
		   { map = "10,-17", path = "left" },
		   { map = "10,-16", path = "left" },
		   { map = "10,-15", path = "left" },
		   { map = "9,-15", path = "left" },
		   { map = "9,-16", path = "left" },
		   { map = "9,-18", path = "left" },
		   { map = "9,-17", path = "left" },
		   { map = "9,-20", path = "left" },
		   { map = "9,-21", path = "left" },
		   { map = "9,-19", path = "left" },
		   { map = "8,-21", path = "bottom" },
		   { map = "8,-20", path = "bottom" },
		   { map = "8,-15", path = "top" },
		   { map = "8,-16", path = "top" },
		   { map = "8,-17", path = "top" },
		   { map = "8,-18", path = "top" },
		   { map = "8,-19", path = "left" },
		   { map = "-2,-21", path = "bottom" },
		   { map = "-2,-20", path = "bottom" },
		   { map = "-2,-22", path = "bottom" },
		   { map = "-2,-23", path = "bottom" },
		   { map = "-2,-24", path = "bottom" },
		   { map = "-2,-25", path = "bottom" },
		   { map = "-2,-26", path = "bottom" },
		   { map = "-2,-27", path = "bottom" },
		   { map = "-1,-24", path = "bottom" },
		   { map = "-1,-25", path = "bottom" },
		   { map = "-1,-27", path = "bottom" },
		   { map = "0,-27", path = "bottom" },
		   { map = "0,-26", path = "bottom" },
		   { map = "-1,-26", path = "bottom" },
		   { map = "0,-25", path = "bottom" },
		   { map = "0,-24", path = "right" },
		   { map = "1,-24", path = "bottom" },
		   { map = "3,-24", path = "bottom" },
		   { map = "2,-24", path = "bottom" },
		   { map = "4,-28", path = "bottom" },
		   { map = "4,-27", path = "bottom" },
		   { map = "4,-26", path = "bottom" },
		   { map = "4,-25", path = "bottom" },
		   { map = "4,-24", path = "bottom" },
		   { map = "3,-25", path = "bottom" },
		   { map = "2,-25", path = "bottom" },
		   { map = "1,-26", path = "bottom" },
		   { map = "1,-25", path = "bottom" },
		   { map = "2,-26", path = "bottom" },
		   { map = "3,-26", path = "bottom" },
		   { map = "3,-27", path = "bottom" },
		   { map = "2,-27", path = "bottom" },
		   { map = "1,-27", path = "bottom" },
		   { map = "2,-28", path = "bottom" },
		   { map = "3,-28", path = "bottom" },
		   { map = "1,-28", path = "bottom" },
		   { map = "5,-28", path = "bottom" },
		   { map = "5,-27", path = "bottom" },
		   { map = "5,-26", path = "bottom" },
		   { map = "5,-25", path = "bottom" },
		   { map = "2,-23", path = "left" },
		   { map = "3,-23", path = "left" },
		   { map = "1,-23", path = "left" },
		   { map = "0,-23", path = "left" },
		   { map = "-1,-23", path = "left" },
		   { map = "-1,-22", path = "left" },
		   { map = "4,-23", path = "right" },
		   { map = "5,-23", path = "right" },
		   { map = "6,-23", path = "right" },
		   { map = "7,-23", path = "right" },
		   { map = "8,-23", path = "bottom" },
		   { map = "8,-22", path = "bottom" },
		   { map = "6,-22", path = "right" },
		   { map = "7,-22", path = "right" },
		   { map = "5,-24", path = "bottom" },
		   { map = "6,-28", path = "bottom" },
		   { map = "6,-27", path = "bottom" },
		   { map = "6,-26", path = "bottom" },
		   { map = "6,-25", path = "bottom" },
		   { map = "6,-29", path = "bottom" },
		   { map = "5,-29", path = "bottom" },
		   { map = "4,-29", path = "bottom" },
		   { map = "3,-29", path = "bottom" },
		   { map = "2,-29", path = "bottom" },
		   { map = "2,-30", path = "bottom" },
		   { map = "3,-30", path = "bottom" },
		   { map = "4,-30", path = "bottom" },
		   { map = "5,-30", path = "bottom" },
		   { map = "4,-14", path = "bottom" },
		   { map = "4,-13", path = "bottom" },
		   { map = "4,-11", path = "bottom" },
		   { map = "4,-12", path = "bottom" },
		   { map = "4,-10", path = "bottom" },
		   { map = "4,-9", path = "bottom" },
		   { map = "4,-8", path = "right" },
		   { map = "5,-8", path = "bottom" },
		   { map = "5,-7", path = "right" },
		   { map = "6,-7", path = "bottom" },
		   { map = "6,-6", path = "right" },
		   { map = "7,-6", path = "right" },
		   { map = "8,-6", path = "bottom" },
		   { map = "8,-5", path = "left" },
		   { map = "7,-5", path = "bottom" },
		   { map = "7,-4", path = "bottom" },
		   { map = "7,-3", path = "bottom" },
		   { map = "5,-2", path = "bottom" },
		   { map = "5,-1", path = "bottom" },
		   { map = "7,-2", path = "left" },
		   { map = "6,-2", path = "left" },
		   { map = "5,0", path = "bottom" },
		   { map = "5,1", path = "bottom" },
		   { map = "5,2", path = "bottom" },
		   { map = "5,3", path = "bottom" },
		   { map = "5,4", path = "bottom" },
		   { map = "5,5", path = "bottom" },
		   { map = "5,6", path = "bottom" },
		   { map = "5,7", path = "bottom" },
		   { map = "5,8", path = "bottom", gather = true },
		   { map = "5,9", path = "bottom", gather = true },
		   { map = "5,10", path = "bottom", gather = true },
		   { map = "5,11", path = "bottom", gather = true },
		   { map = "5,13", path = "bottom", gather = true },
		   { map = "5,12", path = "bottom", gather = true },
		   { map = "5,14", path = "right", gather = true },
		   { map = "6,14", path = "bottom", gather = true },
		   { map = "6,15", path = "bottom", gather = true },
		   { map = "6,16", path = "right", gather = true },
		   { map = "7,17", path = "left", gather = true },
		   { map = "7,16", path = "bottom", gather = true },
		   { map = "6,17", path = "bottom", gather = true },
		   { map = "6,18", path = "right", gather = true },
		   { map = "7,18", path = "bottom", gather = true },
		   { map = "6,19", path = "left", gather = true },
		   { map = "7,19", path = "left", gather = true },
		   { map = "5,19", path = "top", gather = true },
		   { map = "5,18", path = "top", gather = true },
		   { map = "5,17", path = "top", gather = true },
		   { map = "5,16", path = "top", gather = true },
		   { map = "5,15", path = "left", gather = true },
		   { map = "4,15", path = "left", gather = true },
		   { map = "3,15", path = "bottom", gather = true },
		   { map = "3,16", path = "bottom", gather = true },
		   { map = "3,17", path = "bottom", gather = true },
		   { map = "3,18", path = "bottom", gather = true },
		   { map = "3,19", path = "bottom", gather = true },
		   { map = "3,20", path = "bottom", gather = true },
		   { map = "3,21", path = "bottom", gather = true },
		   { map = "3,22", path = "bottom", gather = true },
		   { map = "3,23", path = "bottom", gather = true },
		   { map = "3,24", path = "bottom", gather = true },
		   { map = "3,25", path = "bottom", gather = true },
		   { map = "3,26", path = "bottom", gather = true },
		   { map = "3,27", path = "bottom", gather = true },
		   { map = "3,28", path = "bottom", gather = true },
		   { map = "3,29", path = "right", gather = true },
		   { map = "4,29", path = "right", gather = true },
		   { map = "5,29", path = "right", gather = true },
		   { map = "6,29", path = "right", gather = true },
		   { map = "7,29", path = "right", gather = true },
		   { map = "8,29", path = "right", gather = true },
		   { map = "9,29", path = "right", gather = true },
		   { map = "10,29", path = "bottom", gather = true },
		   { map = "10,30", path = "left", gather = true },
		   { map = "9,30", path = "left", gather = true },
		   { map = "8,30", path = "bottom", gather = true },
		   { map = "6,30", path = "bottom", gather = true },
		   { map = "4,30", path = "bottom", gather = true },
		   { map = "8,31", path = "left", gather = true },
		   { map = "7,30", path = "left", gather = true },
		   { map = "6,31", path = "left", gather = true },
		   { map = "5,30", path = "left", gather = true },
		   { map = "4,31", path = "left", gather = true },
		   { map = "2,31", path = "left", gather = true },
		   { map = "7,31", path = "top", gather = true },
		   { map = "5,31", path = "top", gather = true },
		   { map = "3,31", path = "top", gather = true },
		   { map = "2,30", path = "bottom", gather = true },
		   { map = "3,30", path = "left", gather = true },
		   { map = "1,31", path = "top", gather = true },
		   { map = "1,30", path = "left", gather = true },
		   { map = "0,30", path = "top", gather = true },
		   { map = "0,29", path = "top", gather = true },
		   { map = "0,28", path = "top", gather = true },
		   { map = "0,27", path = "top", gather = true },
		   { map = "0,26", path = "top", gather = true },
		   { map = "0,25", path = "top", gather = true },
		   { map = "0,24", path = "right", gather = true },
		   { map = "1,24", path = "top", gather = true },
		   { map = "1,23", path = "top", gather = true },
		   { map = "1,22", path = "top", gather = true },
		   { map = "1,21", path = "top", gather = true },
		   { map = "1,20", path = "top", gather = true },
		   { map = "1,19", path = "top", gather = true },
		   { map = "1,18", path = "top", gather = true },
		   { map = "1,17", path = "top", gather = true },
		   { map = "1,16", path = "top", gather = true },
		   { map = "1,15", path = "right", gather = true },
		   { map = "2,14", path = "left", gather = true },
		   { map = "1,14", path = "top", gather = true },
		   { map = "1,13", path = "right", gather = true },
		   { map = "2,13", path = "right", gather = true },
		   { map = "3,12", path = "right", gather = true },
		   { map = "3,13", path = "top", gather = true },
		   { map = "4,12", path = "top", gather = true },
		   { map = "4,11", path = "top", gather = true },
		   { map = "4,10", path = "top", gather = true },
		   { map = "4,9", path = "top", gather = true },
		   { map = "4,8", path = "top", gather = true },
		   { map = "2,15", path = "top", gather = true },
		   { map = "2,-1", path = "bottom" },
		   { map = "2,0", path = "bottom" },
		   { map = "2,1", path = "bottom" },
		   { map = "2,2", path = "bottom" },
		   { map = "2,3", path = "bottom" },
		   { map = "2,4", path = "bottom" },
		   { map = "2,5", path = "bottom" },
		   { map = "2,6", path = "bottom" },
		   { map = "2,7", path = "right" },
		   { map = "3,7", path = "right" },
		   { map = "4,7", path = "right", gather = true },
		   { map = "5,7", path = "bottom", gather = true },
		   { map = "88081177", path = "bottom" },     
		   { map = "9095051", path = "410" },
  		}
	end

	if Refill then
	goAmakna = false
		return {
		   { map = "5,8", path = "left" },
		   { map = "5,9", path = "left" },
		   { map = "5,10", path = "left" },
		   { map = "5,11", path = "left" },
		   { map = "5,13", path = "bottom" },
		   { map = "5,12", path = "left" },
		   { map = "5,14", path = "bottom" },
		   { map = "6,14", path = "bottom" },
		   { map = "6,15", path = "bottom" },
		   { map = "6,16", path = "left" },
		   { map = "7,17", path = "left" },
		   { map = "7,16", path = "left" },
		   { map = "6,17", path = "left" },
		   { map = "6,18", path = "left" },
		   { map = "7,18", path = "left" },
		   { map = "6,19", path = "left" },
		   { map = "7,19", path = "left" },
		   { map = "5,19", path = "top" },
		   { map = "5,18", path = "top" },
		   { map = "5,17", path = "top" },
		   { map = "5,16", path = "top" },
		   { map = "5,15", path = "left" },
		   { map = "4,15", path = "left" },
		   { map = "3,15", path = "left" },
		   { map = "3,16", path = "top" },
		   { map = "3,17", path = "top" },
		   { map = "3,18", path = "top" },
		   { map = "3,19", path = "top" },
		   { map = "3,20", path = "top" },
		   { map = "3,21", path = "top" },
		   { map = "3,22", path = "top" },
		   { map = "3,23", path = "top" },
		   { map = "3,24", path = "top" },
		   { map = "3,25", path = "top" },
		   { map = "3,26", path = "top" },
		   { map = "3,27", path = "top" },
		   { map = "3,28", path = "top" },
		   { map = "3,29", path = "left" },
		   { map = "4,29", path = "left" },
		   { map = "5,29", path = "left" },
		   { map = "6,29", path = "left" },
		   { map = "7,29", path = "left" },
		   { map = "8,29", path = "left" },
		   { map = "9,29", path = "left" },
		   { map = "10,29", path = "left" },
		   { map = "10,30", path = "left" },
		   { map = "9,30", path = "left" },
		   { map = "8,30", path = "left" },
		   { map = "6,30", path = "left" },
		   { map = "4,30", path = "left" },
		   { map = "8,31", path = "left" },
		   { map = "7,30", path = "left" },
		   { map = "6,31", path = "left" },
		   { map = "5,30", path = "left" },
		   { map = "4,31", path = "left" },
		   { map = "2,31", path = "left" },
		   { map = "7,31", path = "left" },
		   { map = "5,31", path = "left" },
		   { map = "3,31", path = "left" },
		   { map = "2,30", path = "left" },
		   { map = "3,30", path = "left" },
		   { map = "1,31", path = "top" },
		   { map = "1,30", path = "top" },
		   { map = "0,30", path = "top" },
		   { map = "0,29", path = "top" },
		   { map = "0,28", path = "top" },
		   { map = "0,27", path = "top" },
		   { map = "0,26", path = "top" },
		   { map = "0,25", path = "top" },
		   { map = "0,24", path = "right" },
		   { map = "1,24", path = "top" },
		   { map = "1,23", path = "top" },
		   { map = "1,22", path = "top" },
		   { map = "1,21", path = "top" },
		   { map = "1,20", path = "top" },
		   { map = "1,19", path = "top" },
		   { map = "1,18", path = "top" },
		   { map = "1,17", path = "top" },
		   { map = "1,16", path = "top" },
		   { map = "1,15", path = "right" },
		   { map = "2,14", path = "top" },
		   { map = "2,13", path = "top" },
		   { map = "3,12", path = "left" },
		   { map = "4,12", path = "left" },
		   { map = "4,11", path = "left" },
		   { map = "4,10", path = "left" },
		   { map = "4,9", path = "left" },
		   { map = "4,8", path = "left" },
		   { map = "2,29", path = "left" },
		   { map = "1,29", path = "left" },
		   { map = "2,15", path = "top" },
		   { map = "2,12", path = "top" },
		   { map = "2,11", path = "top" },
		   { map = "2,9", path = "top" },
		   { map = "2,10", path = "top" },
		   { map = "2,8", path = "top" },
		   { map = "3,8", path = "left" },
		   { map = "3,9", path = "left" },
		   { map = "3,10", path = "left" },
		   { map = "3,11", path = "left" },
		   { map = "2,-1", path = "top" },
		   { map = "2,0", path = "top" },
		   { map = "2,1", path = "top" },
		   { map = "2,2", path = "top" },
		   { map = "2,3", path = "top" },
		   { map = "2,4", path = "top" },
		   { map = "2,5", path = "top" },
		   { map = "2,6", path = "top" },
		   { map = "2,7", path = "top" },
		   { map = "3,7", path = "left" },
		   { map = "4,7", path = "left" },
		   { map = "5,7", path = "left" },

		   { map = "1,7", path = "right" },
		   { map = "1,8", path = "right" },
		   { map = "1,9", path = "right" },
		   { map = "1,10", path = "right" },

		   { map = "5,6", path = "left" },
		   { map = "4,6", path = "left" },
		   { map = "3,6", path = "left" },

		   { map = "3,9", path = "top" },
		   { map = "4,9", path = "top" },
		   { map = "3,10", path = "top" },
		   { map = "4,10", path = "top" },

		   -- actions banque interieur & exterieur
		   { map = "99095051", custom = getKamas, path = "410" },
		   { map = "88081177", door = "216" },
		}
	end
end

function bank()
	if combatAstrub then
		return {
			{map = "-1,-14", path = "right" },
			{map = "0,-14", path = "right" },
			{map = "1,-14", path = "right" },
			{map = "2,-14", path = "right" },
			{map = "3,-14", path = "top" },
			{map = "3,-15",  path = "top" },
			{map = "3,-16",  path = "right" },

			{map = "84674566",  door = "303" },
			{map = "83887104", npcBank = true, path = "396" },

			{map = "5,-16",  path = "right" },
			{map = "6,-16",  path = "right" },
			{map = "7,-16",  path = "top" },
			{map = "7,-17",  path = "top" },
			{map = "7,-18",  path = "top" },
			{map = "7,-19",  path = "top" },
			{map = "7,-20",  path = "top" },
			{map = "7,-21",  path = "left" },
			{map = "6,-21",  path = "bottom" },
			{map = "6,-20",  path = "bottom" },
			{map = "6,-19",  path = "left" },
			{map = "5,-19",  path = "left"},
			{map = "4,-19",  path = "left" },
			{map = "3,-19",  path = "top" },
			{map = "3,-21",  path = "top" },
			{map = "3,-22",  path = "left" },
			{map = "2,-22", path = "left" },
			{map = "1,-22", path = "bottom" },
			{map = "1,-21", path = "bottom" },
			{map = "1,-20", path = "bottom" },
			{map = "1,-19", path = "left" },
			{map = "0,-19", path = "left" },
			{map = "-1,-19", path = "bottom" },
			{map = "-1,-18", path = "bottom" },
			{map = "-1,-17", path = "bottom" },
			{map = "-1,-16", path = "bottom" },
			{map = "-1,-15", path = "bottom" },	
		}
	end
	
	if goAmakna then
		return {
		   { map = "5,8", path = "left" },
		   { map = "5,9", path = "left" },
		   { map = "5,10", path = "left" },
		   { map = "5,11", path = "left" },
		   { map = "5,13", path = "bottom" },
		   { map = "5,12", path = "left" },
		   { map = "5,14", path = "bottom" },
		   { map = "6,14", path = "bottom" },
		   { map = "6,15", path = "bottom" },
		   { map = "6,16", path = "left" },
		   { map = "7,17", path = "left" },
		   { map = "7,16", path = "left" },
		   { map = "6,17", path = "left" },
		   { map = "6,18", path = "left" },
		   { map = "7,18", path = "left" },
		   { map = "6,19", path = "left" },
		   { map = "7,19", path = "left" },
		   { map = "5,19", path = "top" },
		   { map = "5,18", path = "top" },
		   { map = "5,17", path = "top" },
		   { map = "5,16", path = "top" },
		   { map = "5,15", path = "left" },
		   { map = "4,15", path = "left" },
		   { map = "3,15", path = "left" },
		   { map = "3,16", path = "top" },
		   { map = "3,17", path = "top" },
		   { map = "3,18", path = "top" },
		   { map = "3,19", path = "top" },
		   { map = "3,20", path = "top" },
		   { map = "3,21", path = "top" },
		   { map = "3,22", path = "top" },
		   { map = "3,23", path = "top" },
		   { map = "3,24", path = "top" },
		   { map = "3,25", path = "top" },
		   { map = "3,26", path = "top" },
		   { map = "3,27", path = "top" },
		   { map = "3,28", path = "top" },
		   { map = "3,29", path = "left" },
		   { map = "4,29", path = "left" },
		   { map = "5,29", path = "left" },
		   { map = "6,29", path = "left" },
		   { map = "7,29", path = "left" },
		   { map = "8,29", path = "left" },
		   { map = "9,29", path = "left" },
		   { map = "10,29", path = "left" },
		   { map = "10,30", path = "left" },
		   { map = "9,30", path = "left" },
		   { map = "8,30", path = "left" },
		   { map = "6,30", path = "left" },
		   { map = "4,30", path = "left" },
		   { map = "8,31", path = "left" },
		   { map = "7,30", path = "left" },
		   { map = "6,31", path = "left" },
		   { map = "5,30", path = "left" },
		   { map = "4,31", path = "left" },
		   { map = "2,31", path = "left" },
		   { map = "7,31", path = "left" },
		   { map = "5,31", path = "left" },
		   { map = "3,31", path = "left" },
		   { map = "2,30", path = "left" },
		   { map = "3,30", path = "left" },
		   { map = "1,31", path = "top" },
		   { map = "1,30", path = "top" },
		   { map = "0,30", path = "top" },
		   { map = "0,29", path = "top" },
		   { map = "0,28", path = "top" },
		   { map = "0,27", path = "top" },
		   { map = "0,26", path = "top" },
		   { map = "0,25", path = "top" },
		   { map = "0,24", path = "top" },
		   { map = "1,23", path = "top" },
		   { map = "1,22", path = "top" },
		   { map = "1,21", path = "top" },
		   { map = "1,20", path = "top" },
		   { map = "1,19", path = "top" },
		   { map = "1,18", path = "top" },
		   { map = "1,17", path = "top" },
		   { map = "1,16", path = "top" },
		   { map = "1,15", path = "right" },
		   { map = "2,14", path = "top" },
		   { map = "2,13", path = "top" },
		   { map = "3,12", path = "left" },
		   { map = "4,12", path = "left" },
		   { map = "4,11", path = "left" },
		   { map = "4,10", path = "left" },
		   { map = "4,9", path = "left" },
		   { map = "4,8", path = "left" },
		   { map = "2,29", path = "left" },
		   { map = "1,29", path = "left" },
		   { map = "2,15", path = "top" },
		   { map = "2,12", path = "top" },
		   { map = "2,11", path = "top" },
		   { map = "2,9", path = "top" },
		   { map = "2,10", path = "top" },
		   { map = "2,8", path = "top" },
		   { map = "3,8", path = "left" },
		   { map = "3,9", path = "left" },
		   { map = "3,10", path = "left" },
		   { map = "3,11", path = "left" },
		   { map = "2,-1", path = "top" },
		   { map = "2,0", path = "top" },
		   { map = "2,1", path = "top" },
		   { map = "2,2", path = "top" },
		   { map = "2,3", path = "top" },
		   { map = "2,4", path = "top" },
		   { map = "2,5", path = "top" },
		   { map = "2,6", path = "top" },
		   { map = "2,7", path = "top" },
		   { map = "3,7", path = "left" },
		   { map = "4,7", path = "left" },
		   { map = "5,7", path = "left" },

		   { map = "1,7", path = "right" },
		   { map = "1,8", path = "right" },
		   { map = "1,9", path = "right" },
		   { map = "1,10", path = "right" },

		   { map = "5,6", path = "left" },
		   { map = "4,6", path = "left" },
		   { map = "3,6", path = "left" },

		   { map = "3,9", path = "top" },
		   { map = "4,9", path = "top" },
		   { map = "3,10", path = "top" },
		   { map = "4,10", path = "top" },


		   -- actions banque interieur & exterieur
		   { map = "99095051", custom = Banque, path = "410" },
		   { map = "88081177", door = "216" },
		}
	end
end

function phenix()
	return {
		{ map = "2,-12", phenix = "272" },
	}
end
