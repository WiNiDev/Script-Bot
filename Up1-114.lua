AUTO_DELETE = { 14679, 14680, 14674, 14673, 887, 6897, 6898, 6899, 6900, 6902, 6903, 519, 311, 365, 14687, 14672, 8246, 2478, 6911, 395, 6912, 6913, 6914, 1736, 2422, 2425, 2419, 881, 883, 884, 885, 384, 385, 383, 304, 2414, 882, 2467, 2475, 8213, 8214, 8215, 8216, 8217, 8218, 8219, 8220, 8221, 8222, 8223, 8224, 8225, 8226, 8227, 8228, 8229, 8230, 8231, 8232, 8233, 8234, 8235, 8236, 8237, 8238, 8239, 8240, 8241, 8242, 8243, 8244, 8245, 8246, 8247, 8248, 1734, 2477, 287 }

 
function move()
  if character:level() < 10 then
    return Etape1()
  elseif character:level() > 9 and character:level() < 16 then
    return Etape2()
  elseif character:level() > 15 and character:level() < 20 then
    return Etape3()
  elseif character:level() > 19 and character:level() < 61 then
    return Etape4()
  elseif character:level() > 60 and character:level() < 115 then
    return Etape5()

  end
end

    function Etape1()
        MIN_MONSTERS = 1
        MAX_MONSTERS = 4
    return {  
         { map="-5,-1", path = "bottom" },
        { map="-4,0", path = "right" },
        { map="-3,1", path = "right" },
        { map="-2,2",  path = "bottom" },
        { map="0,3", fight = true, path = "top|right" },
        { map="1,3", fight = true, path = "top|left" },
        { map="1,2", fight = true, path = "top|right|left" },
        { map="0,2", fight = true, path = "top|right|left|bottom" },
        { map="-1,2", fight = true, path = "top|right" },
        { map="-1,1", fight = true, path = "top|right|bottom" },
        { map="-1,0", fight = true, path = "right|bottom" },
        { map="0,0", fight = true, path = "right|bottom" },
        { map="1,1", fight = true, path = "right|bottom|top|left" },
        { map="0,1", fight = true, path = "right|bottom|top|left" },
        { map="1,0", fight = true, path = "right|bottom|top|left" },
        { map="0,-1", fight = true, path = "right|bottom" },
        { map="1,-1", fight = true, path = "left|right|bottom" },
        { map="2,-1", fight = true, path = "left|bottom" },
        { map="2,0", fight = true, path = "top|left|bottom" },
        { map="2,1", fight = true, path = "top|left|bottom" },
        { map="2,2", fight = true, path = "top|left|bottom" },
        { map="2,3", fight = true, path = "top|left" },
    }
end

   function Etape2()
MIN_MONSTERS = 1
MAX_MONSTERS = 2


    return {  
         { map="-5,-1", path = "bottom" },
        { map="-4,0", path = "right" },
        { map="-3,1", path = "right" },
        { map="-2,2",  path = "bottom" },
        { map="0,3",  path = "right" },
        { map="1,3",  path = "right" },
        { map="1,2",  path = "left" },
        { map="0,2",  path = "bottom" },
        { map="-1,2",  path = "right" },
        { map="-1,1",  path = "bottom" },
        { map="-1,0",  path = "bottom" },
        { map="0,0",  path = "bottom" },
        { map="1,1", path = "left" },
        { map="0,1",  path = "bottom" },
        { map="1,0",  path = "bottom" },
        { map="0,-1", path = "bottom" },
        { map="1,-1",  path = "bottom" },
        { map="2,-1",  path = "bottom" },
        { map="2,0", path = "bottom" },
        { map="2,1",  path = "bottom" },
        { map="2,2",  path = "bottom" },
        { map="2,3",  path = "right" },
        { map="3,3",  path = "bottom" },
         { map="3,4", fight = true, path = "bottom|right(111)" },
          { map="3,5", fight = true, path = "bottom|top" },
           { map="3,6", fight = true, path = "right|top" },
            { map="4,6", fight = true, path = "left|top(12)" },
             { map="4,5", fight = true, path = "bottom|right" },
              { map="5,5", fight = true, path = "top|left" },
              { map="5,4", fight = true, path = "bottom|left(140)" },
               { map="4,4", fight = true, path = "right(111)|left(140)" },
    }
end
    function Etape3()

MIN_MONSTERS = 1
MAX_MONSTERS = 4


    return {  
         { map="-5,-1", path = "bottom" },
        { map="-4,0", path = "right" },
        { map="-3,1", path = "right" },
        { map="-2,2",  path = "bottom" },
        { map="0,3",  path = "right" },
        { map="1,3",  path = "right" },
        { map="1,2",  path = "left" },
        { map="0,2",  path = "bottom" },
        { map="-1,2",  path = "right" },
        { map="-1,1",  path = "bottom" },
        { map="-1,0",  path = "bottom" },
        { map="0,0",  path = "bottom" },
        { map="0,1",  path = "bottom" },
        { map="1,0",  path = "bottom" },
        { map="0,-1", path = "bottom" },
        { map="1,-1",  path = "bottom" },
        { map="2,-1",  path = "bottom" },
        { map="2,0", path = "bottom" },
        { map="2,1",  path = "bottom" },
        { map="2,2",  path = "bottom" },
        { map="2,3",  path = "right" },
        { map="3,3",  path = "bottom" },
         { map="3,4", fight = true, path = "bottom|right(111)" },
          { map="3,5", fight = true, path = "bottom|top" },
           { map="3,6", fight = true, path = "right|top" },
            { map="4,6", fight = true, path = "left|top(12)" },
             { map="4,5", fight = true, path = "bottom|right" },
              { map="5,5", fight = true, path = "top|left" },
              { map="5,4", fight = true, path = "bottom|left(140)" },
               { map="4,4", fight = true, path = "right(111)|left(140)" },
    }
  end

   function Etape4()
MIN_MONSTERS = 1
MAX_MONSTERS = 2
 

    return {  
         { map="-5,-1", path = "bottom" },
        { map="-4,0", path = "right" },
        { map="-3,1", path = "right" },
        { map="-2,2",  path = "bottom" },
        { map="0,3",  path = "right" },
        { map="1,3",  path = "right" },
        { map="1,2",  path = "left" },
        { map="0,2",  path = "bottom" },
        { map="-1,2",  path = "right" },
        { map="-1,1",  path = "bottom" },
        { map="-1,0",  path = "bottom" },
        { map="0,0",  path = "bottom" },
        { map="0,1",  path = "bottom" },
        { map="1,0",  path = "bottom" },
        { map="0,-1", path = "bottom" },
        { map="1,-1",  path = "bottom" },
        { map="2,-1",  path = "bottom" },
        { map="2,0", path = "bottom" },
        { map="2,1",  path = "bottom" },
        { map="2,2",  path = "bottom" },
        { map="2,3",  path = "right" },
        { map="3,3",  path = "bottom" },
         { map="3,4",  path = "right(111)" },
          { map="3,5",  path = "top" },
           { map="3,6", path = "right" },
            { map="4,6",  path = "right" },
             { map="4,5",  path = "right" },
              { map="5,5",  path = "right|bottom" },
              { map="5,4",  path = "right" },
               { map="4,4",  path = "right(111)" },
                { map="81527303",  door = 407 },
    { map="5,6", fight = true, path = "bottom|top" },
     { map="5,7", fight = true, path = "left|top|right" },
     { map="4,7", fight = true, path = "right" },
      { map="6,7", fight = true, path = "left" },
      { map="6,5", fight = true, path = "left|top" },
       { map="6,4", fight = true, path = "bottom|top|right" },
       { map="7,4", fight = true, path = "left|top" },
       { map="8,3",  path = "left" },
        { map="7,3", fight = true, path = "left|bottom" },
        { map="6,3", fight = true, path = "left|bottom|right" },
        { map="5,3", fight = true, path = "right" },
 }
 end
 function Etape5()
MIN_MONSTERS = 2
MAX_MONSTERS = 4
 

    return {  
         { map="-5,-1", path = "bottom" },
        { map="-4,0", path = "right" },
        { map="-3,1", path = "right" },
        { map="-2,2",  path = "bottom" },
        { map="0,3",  path = "right" },
        { map="1,3",  path = "right" },
        { map="1,2",  path = "left" },
        { map="0,2",  path = "bottom" },
        { map="-1,2",  path = "right" },
        { map="-1,1",  path = "bottom" },
        { map="-1,0",  path = "bottom" },
        { map="0,0",  path = "bottom" },
        { map="0,1",  path = "bottom" },
        { map="1,0",  path = "bottom" },
        { map="0,-1", path = "bottom" },
        { map="1,-1",  path = "bottom" },
        { map="2,-1",  path = "bottom" },
        { map="2,0", path = "bottom" },
        { map="2,1",  path = "bottom" },
        { map="2,2",  path = "bottom" },
        { map="2,3",  path = "right" },
        { map="3,3",  path = "bottom" },
         { map="3,4",  path = "right(111)" },
          { map="3,5",  path = "top" },
           { map="3,6", path = "right" },
            { map="4,6",  path = "right" },
             { map="4,5",  path = "right" },
              { map="5,5",  path = "right|bottom" },
              { map="5,4",  path = "right" },
               { map="4,4",  path = "right(111)" },
                { map="81527303",  door = 407 },
    { map="5,6", fight = true, path = "bottom|top" },
     { map="5,7", fight = true, path = "left|top|right" },
     { map="4,7", fight = true, path = "right" },
      { map="6,7", fight = true, path = "left" },
      { map="6,5", fight = true, path = "left|top" },
       { map="6,4", fight = true, path = "bottom|top|right" },
       { map="7,4", fight = true, path = "left|top" },
       { map="8,3",  path = "left" },
        { map="7,3", fight = true, path = "left|bottom" },
        { map="6,3", fight = true, path = "left|bottom|right" },
        { map="5,3", fight = true, path = "right" },
 }
 end
