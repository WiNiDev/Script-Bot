AUTO_DELETE = {10792, 10793, 10795, 10796,10801,10797, 10784, 10798, 10799, 10794, 10785, 10800, 881, 385, 1736, 884, 883, 395, 885, 304, 14672, 2419, 2422, 384, 882, 2419, 887, 2425, 2419, 14687, 2419, 2425}
OPEN_BAGS = true

IDItem1 = 312 -- Fer
IDItem2 = 441 -- Cuivre
IDItem3 = 442 -- Bronze
IDItem4 = 443 -- Kobalte
IDItem5 = 444 -- Etain
IDItem6 = 350 -- Argent
IDItem7 = 446 -- Bauxite
IDItem8 = 313 -- Or

gotobanqueastrub = false
mineur1 = false
mineur20 = false
combatAstrub = false
gotobanquebrakmar = false

   

function Selling()

  	if character:kamas() > 299 and inventory:itemCount(IDItem1) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem1, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem1) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem1, 10, Priceitem -1)
			global:printSuccess("venteid1")
        	  end
       		  global:leaveDialog() 
   		end
 	end

  	if character:kamas() > 299 and inventory:itemCount(IDItem2) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem2, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem2) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem2, 10, Priceitem -1)
			global:printSuccess("venteid2")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem3) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem3, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem3) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem3, 10, Priceitem -1)
			global:printSuccess("venteid3")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem4) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem4, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem4) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem4, 10, Priceitem -1)
			global:printSuccess("venteid4")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem5) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem5, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem5) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem5, 10, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem6) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem6, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem6) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem6, 10, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem7) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem7, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem7) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem7, 10, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem8) > 9 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem8, 2)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem8) > 9) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem8, 10, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end
end


function saveZaapAstrub()
	map:useById(509434,-2)
end


function goAstrub()
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

function prendreKamasBrakmar()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    npc:npcSale()
    global:delay(300)
    sale:updateAllItems()
    global:printSuccess("Mise à jour des prix")
    global:delay(300)
    global:leaveDialog() 
    tpbrakmar()
    gotobanquebrakmar = false
    mineur20 = true
end

function prendreKamasAstrub()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    npc:npcSale()
    global:delay(300)
    sale:updateAllItems()
    global:printSuccess("Mise à jour des prix")
    global:delay(300)
    global:leaveDialog() 
    tpastrub()
    mineur1 = true
    gotobanqueastrub = false
end

function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 300)
    global:printSuccess("Popo rappel")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
end

function tpbrakmar()
    npc:npcBuy()
    sale:buyItem(6964, 1, 300)
    global:printSuccess("Popo brak")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(6964)
    global:printSuccess("utilisée")
end


function apprendreMineur() 
    npc:npc(596,3)
    npc:reply(-2)
    npc:reply(-1)
    global:leaveDialog()
    map:moveToCell(549)
end

function move()
	Selling()

   if job:level(24) < 20 and character:level() > 19 and character:kamas() > 299 then 
	mineur1 = true
	mineur20 = false
	combatAstrub = false
	gotobanquebrakmar = false
	gotobanqueastrub = false
   end

   if job:level(24) < 20 and character:level() > 19 and character:kamas() < 300 then 
	gotobanqueastrub = true
	mineur1 = false
	mineur20 = false
	combatAstrub = false
	gotobanquebrakmar = false
   end

   if job:level(24) > 19 and character:level() > 19 and character:kamas() > 299 then 
	mineur20 = true
	gotobanquebrakmar = false
	combatAstrub = false
	mineur1 = false
	gotobanqueastrub = false
   end

   if job:level(24) > 19 and character:level() > 19 and character:kamas() < 300 then
	gotobanquebrakmar = true 
	mineur20 = false
	combatAstrub = false
	mineur1 = false
	gotobanqueastrub = false
   end

   if character:level() < 20 then
	combatAstrub = true
	mineur20 = false
	mineur1 = false
	gotobanquebrakmar = false
	gotobanqueastrub = false
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
			{ map="-5,-1", path = "bottom" },   --Dessente incarnam
			{ map="-4,0", path = "right" },
			{ map="-3,1", path = "right" },
			{ map="-2,2", path = "bottom" },
			{ map="0,3", path = "right" },
			{ map="1,3", path = "right" },
			{ map="2,3", path = "right" },
			{ map="3,3", path = "right" },
			{ map="4,3", path = "right" },
			{ map="5,3", path = "right" },
			{ map="6,3", path = "right" },
			{ map="7,3", path = "right" },
			{ map="8,3", path = "right" },
			{ map = "80220676", custom = goAstrub },
			{map = "2,-12", path = "right" },       --Phénix Piou
			{map = "3,-12", path = "right" },
			{map = "4,-12", path = "top" },
			{map = "4,-13", path = "top" },
			{map = "4,-14", path = "top" },
			{map = "4,-15", path = "left" },	--Phénix Piou
			{map = "-1,-14", fight = true,  path = "right" },   -- Combats Astrub
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
			{map = "84674566", fight = true,  path = "right	" },
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


	if mineur1 == true and job:level(24) < 1 then

	return {
   		{ map = "-1,-14", path = "top" },
  		{ map = "0,-14", path = "top" },
   		{ map = "1,-14", path = "top" },
   		{ map = "2,-14", path = "top" },
   		{ map = "3,-14", path = "top" },
   		{ map = "4,-15", path = "top" },
   		{ map = "4,-16", path = "top" },
   		{ map = "3,-15", path = "top" },
   		{ map = "3,-16", path = "top" },
   		{ map = "3,-17", path = "top" },
   		{ map = "3,-18", path = "top" },
   		{ map = "-1,-15", path = "top" },
   		{ map = "-1,-16", path = "right" },
   		{ map = "0,-16", path = "right" },
   		{ map = "1,-16", path = "right" },
   		{ map = "2,-16", path = "right" },
   		{ map = "0,-15", path = "right" },
   		{ map = "1,-15", path = "right" },
   		{ map = "2,-15", path = "right" },
   		{ map = "-1,-17", path = "right" },
   		{ map = "0,-17", path = "right" },
   		{ map = "1,-17", path = "right" },
   		{ map = "2,-17", path = "right" },
   		{ map = "-1,-18", path = "right" },
   		{ map = "0,-18", path = "right" },
   		{ map = "1,-18", path = "right" },
   		{ map = "2,-18", path = "right" },
   		{ map = "-1,-19", path = "right" },
   		{ map = "0,-19", path = "right" },
   		{ map = "1,-19", path = "right" },
   		{ map = "2,-19", path = "right" },
   		{ map = "4,-17", path = "top" },
   		{ map = "4,-18", path = "top" },
   		{ map = "5,-15", path = "top" },
   		{ map = "5,-16", path = "top" },
   		{ map = "6,-15", path = "top" },
   		{ map = "7,-15", path = "top" },
   		{ map = "7,-16", path = "top" },
   		{ map = "6,-16", path = "top" },
   		{ map = "6,-17", path = "top" },
   		{ map = "5,-17", path = "top" },
   		{ map = "7,-18", path = "left" },
   		{ map = "6,-18", path = "left" },
   		{ map = "5,-18", path = "left" },
   		{ map = "7,-19", path = "left" },
   		{ map = "6,-19", path = "left" },
   		{ map = "5,-19", path = "left" },
   		{ map = "5,-20", path = "bottom" },
   		{ map = "5,-21", path = "bottom" },
   		{ map = "6,-21", path = "bottom" },
   		{ map = "7,-21", path = "bottom" },
   		{ map = "7,-20", path = "left" },
   		{ map = "6,-20", path = "bottom" },
   		{ map = "-1,-22", path = "bottom" },
   		{ map = "-1,-21", path = "bottom" },
   		{ map = "-1,-20", path = "bottom" },
   		{ map = "0,-22", path = "bottom" },
   		{ map = "0,-21", path = "bottom" },
   		{ map = "0,-20", path = "bottom" },
   		{ map = "1,-22", path = "bottom" },
   		{ map = "1,-21", path = "bottom" },
   		{ map = "1,-20", path = "bottom" },
   		{ map = "2,-22", path = "bottom" },
   		{ map = "2,-21", path = "bottom" },
   		{ map = "2,-20", path = "bottom" },
   		{ map = "3,-22", path = "bottom" },
   		{ map = "3,-21", path = "bottom" },
   		{ map = "3,-20", path = "bottom" },
   		{ map = "84674051" , path = "right" },
   		{ map = "84674563" , custom = saveZaapAstrub, path = "top" }, -- SAUVEGARDE ZAAP
   		{ map = "84675586" , path = "left" },
   		{ map = "84675074" , path = "bottom" },
   		{ map = "84675075" , path = "left" },
   		{ map = "84674562" , path = "top" },
   		{ map = "84674561" , path = "top" },
   		{ map = "84674560" , path = "right" },
   		{ map = "84675072" , path = "right" },
   		{ map = "84675584" , path = "right" },
   		{ map = "84676096" , path = "right" },
   		{ map = "84676608" , path = "right" },
   		{ map = "84677120" , path = "top" },
   		{ map = "84677377" , door = 358 },
   		{ map = "102236673" , custom = apprendreMineur },
		}
   	end

    if mineur1 == true and job:level(24) > 0 then

	return {
        { map = "4,-19", path = "right" },
        { map = "5,-19", path = "right" },
        { map = "6,-19", path = "right" },
        { map = "7,-19", path = "right" },
        { map = "8,-19", path = "right" },
	{ map = "84675075" , path = "right" },
	{ map = "84675587" , path = "right" },
	{ map = "84676099" , path = "right" },
	{ map = "84676611" , path = "right" },
	{ map = "84677377" , path = "bottom" },
	{ map = "84677120" , path = "bottom" },
	{ map = "84677121" , path = "bottom" },
	{ map = "84677122" , path = "bottom" },
	{ map = "84677123" , path = "bottom" },
	{ map = "84677124" , path = "bottom" },
	{ map = "84677125" , path = "bottom" },
	{ map = "84677126" , path = "bottom" },
	{ map = "84677127" , path = "bottom" },
	{ map = "84677128" , path = "left" },
	{ map = "84676616" , path = "left" },
	{ map = "84676104" , path = "left" },
	{ map = "84675592" , path = "left" },
	{ map = "84675080" , path = "left" },
	{ map = "84674568" , path = "bottom" },
	{ map = "84674569" , path = "bottom" },
	{ map = "84674570" , path = "bottom" },
	{ map = "84674571" , path = "left" },
	{ map = "84674059" , path = "left" },
	{ map = "84673547" , path = "bottom" },
	{ map = "84673548" , path = "bottom" },
	{ map = "84673549" , path = "bottom" },
	{ map = "84673550" , path = "left" },
	{ map = "70778880" , path = "444" },
	{ map = "775" , path = "bottom" },
	{ map = "774" , path = "bottom" },
	{ map = "88080668" , path = "bottom" },
	{ map = "88080667" , path = "bottom" },
	{ map = "88080666" , path = "bottom" },
	{ map = "88080665" , path = "bottom" },
	{ map = "88080664" , path = "bottom" },
	{ map = "88080663" , path = "bottom" },
	{ map = "88080662" , path = "bottom" },
	{ map = "88080661" , path = "bottom" },
	{ map = "88080660" , path = "bottom" },
	{ map = "88080659" , path = "bottom" },
	{ map = "88080658" , path = "bottom" },
	{ map = "88080657" , path = "bottom" },
	{ map = "88080656" , path = "bottom" },
	{ map = "88080655" , path = "bottom" },
	{ map = "88080654" , path = "bottom" },
	{ map = "88080653" , path = "bottom" },
	{ map = "88080652" , path = "bottom" },
	{ map = "88080651" , path = "bottom" },
	{ map = "88080650" , path = "bottom" },
	{ map = "88080649" , path = "bottom" },
	{ map = "88080648" , path = "bottom" },
	{ map = "88080647" , path = "bottom" },
	{ map = "88080646" , path = "bottom" },
	{ map = "88080645" , path = "bottom" },
	{ map = "88080644" , path = "bottom" },
	{ map = "88080643" , path = "bottom" },
	{ map = "88080642" , path = "bottom" },
	{ map = "88080641" , path = "bottom" },
	{ map = "88080384" , path = "bottom" },
	{ map = "88080385" , path = "bottom" },
	{ map = "88080386" , path = "bottom" },
	{ map = "88080387" , path = "bottom" },
	{ map = "88080388" , path = "bottom" },
	{ map = "88080389" , path = "bottom" },
	{ map = "88080390" , path = "bottom" },
	{ map = "88080391" , path = "bottom" },
	{ map = "72619521" , path = "bottom" },       -- DESCENTE PORCOS
	{ map = "72619522" , custom = loop1 , gather = true},
	{ map = "72618499" , custom = loop2 , path = "top" , gather = true},
	{ map = "72618498" , path = "right" },
	{ map = "72619010" , path = "right" },
	{ map = "72619523" , path = "left" },
	{ map = "72619011" , path = "left" },
	{ map = "30671116" , custom = loop3 , gather = true},
	{ map = "30671110" , custom = loop4 , gather = true},
	{ map = "30671107" , custom = loop5 , gather = true},
	{ map = "30670848" , custom = loop6 , gather = true},
	{ map = "30672658" , custom = loop7 , gather = true},
	{ map = "30672655" , custom = loop8 , gather = true},
	{ map = "30672649" , custom = loop9 , gather = true},
	{ map = "72222720" , custom = loop10 , gather = true}, -- LOOP 1 - 20
	}
    end

    if mineur20 == true then
	return {
	{ map = "72618498" , custom = tpbrakmar },
	{ map = "72619010" , custom = tpbrakmar },
	{ map = "72619523" , custom = tpbrakmar },
	{ map = "72619011" , custom = tpbrakmar },
	{map = "8913935", custom = tpbrakmar}, -- Pour banque brak si jamais on force le retour banque
	{ map = "30671116" , custom = tpbrakmar },
	{ map = "30671110" , custom = tpbrakmar },
	{ map = "30671107" , custom = tpbrakmar },
	{ map = "30670848" , custom = tpbrakmar },
	{ map = "30672658" , custom = tpbrakmar },
	{ map = "30672655" , custom = tpbrakmar },
	{ map = "30672649" , custom = tpbrakmar },
	{ map = "72222720" , custom = tpbrakmar },
	{ map = "72619522" , custom = tpbrakmar },
	{ map = "72618499" , custom = tpbrakmar },  -- SORTIE PORCOS
	{ map = "13631488" , path = "534" },
	{ map = "144420" , path = "top" },
	{ map = "144419" , path = "top" },
	{ map = "144418" , path = "top" },
	{ map = "144417" , path = "top" },
	{ map = "144416" , path = "top" },
	{ map = "144415" , door = 125 },
	{ map = "143902" , path = "top" },
	{ map = "143901" , path = "top" },
	{ map = "143900" , path = "top" },
	{ map = "143899" , path = "top" },
	{ map = "143898" , path = "top" },
	{ map = "143897" , path = "top" },
	{ map = "143896" , door = 174 },  -- DIRECTION MINE BRAK
	{ map = "29884416" , path = "347" },
	{ map = "29885952" , gather = true, custom = loopBrak1 },
	{ map = "29887491" , gather = true, custom = loopBrak2 },
	{ map = "29884422" , gather = true, custom = loopBrak3 },
	{ map = "29885958" , gather = true, custom = loopBrak4 },
	{ map = "29887494" , gather = true, custom = loopBrak5 },
	{ map = "29884425" , gather = true, custom = loopBrak6 },
	{ map = "29885961" , gather = true, custom = loopBrak7 },
	{ map = "29887497" , gather = true, custom = loopBrak8 },
	{ map = "29884419" , gather = true, custom = loopBrak9 },
	{ map = "29885955" , gather = true, custom = loopBrak10 }, -- LOOP 20 - 100
	}
    end

	if gotobanquebrakmar then 
	
   return {
	{ map = "29885952" , custom = tpbrakmar },
	{ map = "29887491" , custom = tpbrakmar },
	{ map = "29884422" , custom = tpbrakmar },
	{ map = "29885958" , custom = tpbrakmar },
	{ map = "29887494" , custom = tpbrakmar },
	{ map = "29884425" , custom = tpbrakmar },
	{ map = "29885961" , custom = tpbrakmar },
	{ map = "29887497" , custom = tpbrakmar },
	{ map = "29884419" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },  -- LOOP 20 - 100
	{map = "13631488", path = "zaapi(144931)"}, --de la milice a la banque
	{map = "144931", door = "218"},             -- banque porte milieu
	{map = "8913935", custom = prendreKamasBrakmar},
	}
   end
	
    if gotobanqueastrub then 
	
	return {
	{ map = "30671116" , custom = tpastrub},
	{ map = "30671110" , custom = tpastrub},
	{ map = "30671107" , custom = tpastrub},
	{ map = "30670848" , custom = tpastrub},
	{ map = "30672658" , custom = tpastrub},
	{ map = "30672655" , custom = tpastrub},
	{ map = "30672649" , custom = tpastrub},
	{ map = "72222720" , custom = tpastrub}, -- LOOP 1 - 20
        { map = "4,-19", path = "bottom" },
        { map = "4,-18", path = "bottom" },
        { map = "4,-17", path = "bottom" }, 
	{ map = "84674566", door = "303" },
	{ map = "83887104", custom = prendreKamasAstrub },
	}
    end
end

function loopBrak10()

   if map:onCell(474) then
        global:delay(500)
	map:moveToCell(416)
	global:delay(500)
	map:moveToCell(489)
   else
	global:delay(500)
	map:moveToCell(489)
   end
   
end

function loopBrak9()
	if map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
  

   elseif map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
  else
  global:delay(500)
  map:moveToCell(155)
  end

end

function loopBrak8()

   if map:onCell(460) then
    global:delay(500)
    map:moveToCell(416)
    global:delay(500)
    map:moveToCell(474)
   else
    global:delay(500)
    map:moveToCell(474)
   end

end

function loopBrak7()

   if map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
  

   elseif map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
   else
  global:delay(500)
  map:moveToCell(155)
   end

end

function loopBrak6()

   if map:onCell(449) then 
        global:delay(500)
	map:moveToCell(408)
	global:delay(500)
	map:moveToCell(462)
   else
	global:delay(500)
	map:moveToCell(462)
   end
   
end

function loopBrak5()

   if map:onCell(449) then
	global:delay(500)
	map:moveToCell(138)
   

   elseif map:onCell(152) then
	global:delay(500)
	map:moveToCell(113)
   

   elseif map:onCell(127) then
	global:delay(500)
	map:moveToCell(462)
   else
        global:delay(500)
        map:moveToCell(462)
   end

end

function loopBrak4()

   if map:onCell(449) then
	global:delay(500)
	map:moveToCell(152)
  

   elseif map:onCell(165) then
	global:delay(500)
	map:moveToCell(462)
   else
  global:delay(500)
  map:moveToCell(152)
   end

end

function loopBrak3()

   if map:onCell(170) then
        global:delay(500)
	map:moveToCell(213)
	global:delay(500)
	map:moveToCell(155)
   else
	global:delay(500)
	map:moveToCell(155)
   end
   
end

function loopBrak2()
   
   if map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
   

   elseif map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
   else
	global:delay(500)
	map:moveToCell(474)
   end
   
end


function loopBrak1()
   
    if map:onCell(127) then
    global:delay(500)
    map:moveToCell(432)
    

    elseif map:onCell(417) then
    global:delay(500)
    map:moveToCell(138)
    

    elseif map:onCell(152) then
    global:delay(500)
    map:moveToCell(113)
    

    elseif map:onCell(449) then
    global:delay(500)
    map:moveToCell(432)
    else
    global:delay(500)
    map:moveToCell(113)
   end

end 


function loop10() -- OK
   if map:onCell(451) then
	global:delay(500)
	map:moveToCell(424)
	global:delay(500)
	map:moveToCell(464)
   else
	global:delay(500)
	map:moveToCell(464)
   end
end

function loop9() -- OK
   if map:onCell(395) then
        global:delay(500)
	map:moveToCell(368)
	global:delay(500)
	map:moveToCell(408)
   else
	global:delay(500)
	map:moveToCell(408)
   end
end

function loop8() -- OK
   if map:onCell(285) then
	global:delay(500)
	map:moveToCell(221)
   elseif map:onCell(235) then
	global:delay(500)
	map:moveToCell(270)
   else
	global:delay(500)
	map:moveToCell(221)
   end
end

function loop7() -- OK
   if map:onCell(463) then
	global:delay(500)
	map:moveToCell(362)

   elseif map:onCell(348) then
	global:delay(500)
	map:moveToCell(477)
   else
	global:delay(500)
	map:moveToCell(362)
   end
end

function loop6() -- OK
   if map:onCell(329) then
	global:delay(500)
	map:moveToCell(356)
	global:delay(500)
	map:moveToCell(344)
   else
	global:delay(500)
	map:moveToCell(344)
   end
end

function loop5() -- OK
   if map:onCell(261) then
	global:delay(500)
	map:moveToCell(298)

   elseif map:onCell(313) then
	global:delay(500)
	map:moveToCell(247)
   else
	global:delay(500)
	map:moveToCell(298)
   end
end

function loop4() -- OK
   if map:onCell(203) then
	global:delay(500)
	map:moveToCell(479)

   elseif map:onCell(465) then
	global:delay(500)
	map:moveToCell(188)
   else
	global:delay(500)
	map:moveToCell(479)
   end
end

function loop3() -- OK
   if map:onCell(439) then
	global:delay(500)
	map:moveToCell(292)
 
   elseif map:onCell(277) then
	global:delay(500)
	map:moveToCell(454)
   else
	global:delay(500)
	map:moveToCell(292)
   end
end


function loop2()
   if map:onCell(231) or map:onCell(86) then
   else
	global:delay(500)
	map:door(231)
   end
     if map:onCell(231) then
	global:delay(500)
	map:door(71)
     end
       if map:onCell(86) then
       end
end


function loop1()
    if map:onCell(146) then
	global:delay(500)
	map:changeMap("bottom")
	global:delay(500)
    else
	global:delay(500)
	map:door(132)
	global:delay(500)
   end
end

function bank()

   if mineur20 == true then
	return {
	{ map = "29885952" , custom = tpbrakmar },
	{ map = "29887491" , custom = tpbrakmar },
	{ map = "29884422" , custom = tpbrakmar },
	{ map = "29885958" , custom = tpbrakmar },
	{ map = "29887494" , custom = tpbrakmar },
	{ map = "29884425" , custom = tpbrakmar },
	{ map = "29885961" , custom = tpbrakmar },
	{ map = "29887497" , custom = tpbrakmar },
	{ map = "29884419" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },  -- LOOP 20 - 100
	{map = "13631488", path = "zaapi(144931)"}, --de la milice a la banque
	{map = "144931", door = "218"},             -- banque porte milieu
	{map = "8913935", custom = prendreKamasBrakmar},
	}
    end

     if mineur1 == true then
	return {
	{ map = "30671116" , custom = tpastrub},
	{ map = "30671110" , custom = tpastrub},
	{ map = "30671107" , custom = tpastrub},
	{ map = "30670848" , custom = tpastrub},
	{ map = "30672658" , custom = tpastrub},
	{ map = "30672655" , custom = tpastrub},
	{ map = "30672649" , custom = tpastrub},
	{ map = "72222720" , custom = tpastrub}, -- LOOP 1 - 20
        { map = "4,-19", path = "bottom" },
        { map = "4,-18", path = "bottom" },
        { map = "4,-17", path = "bottom" }, 
	{ map = "84674566", door = "303" },
	{ map = "83887104", custom = prendreKamasAstrub },
	}
    end
end