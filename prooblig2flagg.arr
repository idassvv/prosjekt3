import color as C

fun nordic-flag(country-code :: String, width :: Number):

  color-red-nor-alternative = C.color(200, 16, 46, 1) 

  # bruker disse fargene for NOR og FRO
  color-red-nor-fro = C.color(186, 12, 47, 1)
  color-blue-nor-fro = C.color(0, 32, 91, 1)
  color-white = C.color(255, 255, 255, 1)
  color-red-nor = C.color(200, 16, 46, 1)
  color-yellow = C.color(255, 250, 25, 1)
  color-blue-se = C.color(10, 50, 155, 5)


  if country-code == "NOR":
    nor-fro(width, color-red-nor-fro, color-blue-nor-fro, color-white)   
  else if country-code == "DEN": 
    nor-fro(width,color-red-nor-fro, color-white, color-red-nor-fro)
  else if country-code == "FIN":
   nor-fro(width,color-white, color-blue-nor-fro, color-white)
  else if country-code == "ISL":
    nor-fro(width, color-blue-nor-fro, color-red-nor-fro, color-white)
  else if country-code == "FÆR":
    nor-fro(width,color-white, color-red-nor-fro, color-blue-se)
  else if country-code == "SVE": 
    nor-fro(width, color-blue-se, color-yellow,  color-blue-se)
  end

end 

fun nor-fro(width, color1, color2, color3):
  # hardkoder data for proporsjoner (eventuelt kan hentes fra en database)
  unit-nor-fro-h = 16 # 6-1-2-1-6 (høyde) og 6-1-2-1-12 (lengde)
  unit-nor-fro-w = 22 
  # her kan geometrien defineres (h - height, w - width)
  # ubl - upper bottom left (firkanter både oppe og nede)
  # ubr - upper bottom right 
  unit-ubl-h = 6
  unit-ubl-w = 6
  unit-ubr-h = 6
  unit-ubr-w = 12
  unit-vertical-h = unit-nor-fro-h
  unit-vertical-w = 2
  unit-horisontal-h = 2
  unit-horisontal-w = unit-nor-fro-w
  # forutsetter bruke av funksjonen overlay-xy (ikke put-image f.eks.)
  unit-vertical-dx = 7
  unit-vertical-dy = 0
  unit-horisontal-dx = 0
  unit-horisontal-dy = 7

  # beregninger og tegning (her kan det være mange løsnigner avhening av funksjoner man velger)
  ratio = unit-nor-fro-h / unit-nor-fro-w
  height = ratio * width

  # denne utregningen er mye brukt, så lager definisjoner her
  unit-h = height / unit-nor-fro-h
  unit-w = width / unit-nor-fro-w

  # alle deler i flagget
  rect-bac = rectangle(width, height, "solid", color3)
  rect-ubl = rectangle(unit-w * unit-ubl-w, unit-h * unit-ubl-h, "solid", color1)
  rect-ubr = rectangle(unit-w * unit-ubr-w, unit-h * unit-ubr-h, "solid", color1)
  rect-ver = rectangle(unit-w * unit-vertical-w, unit-h * unit-vertical-h, "solid", color2)
  rect-hor = rectangle(unit-w * unit-horisontal-w, unit-h * unit-horisontal-h, "solid", color2) 

  # tegneprosessen
  scene-0 = overlay-align("middle", "middle", rect-bac, empty-scene(width, height))
  scene-1 = overlay-align("left", "top", rect-ubl, scene-0) 
  scene-2 = overlay-align("left", "bottom", rect-ubl, scene-1)
  scene-3 = overlay-align("right", "top", rect-ubr, scene-2)
  scene-4 = overlay-align("right", "bottom", rect-ubr, scene-3)


  scene-5 = overlay-xy(rect-ver, -1 * (unit-w * unit-vertical-dx), unit-h * unit-vertical-dy, scene-4)
  overlay-xy(rect-hor, unit-w * unit-horisontal-dx, -1 * (unit-h * unit-horisontal-dy), scene-5)
end

fun den(ratio, width, color1):
  unit-den-h = 28
  unit-den-w = 34
  nothing
end

fun fin(ratio, width, color1):
  unit-fin-h = 11
  unit-fin-w = 18 
  nothing
end

fun swe(ratio, widht, color1, color2):
  unit-swe-h = 10
  unit-swe-w = 16
  nothing
end

fun isl(ratio, widht, color1, color2):
  unit-isl-h = 18
  unit-isl-w = 25
  nothing
end


nordic-flag("FIN", 220)
nordic-flag("NOR", 220)
nordic-flag("DEN", 220)
nordic-flag("ISL", 220)
nordic-flag("FÆR", 220)
nordic-flag("SVE", 220)