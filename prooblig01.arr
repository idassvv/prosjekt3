en= (overlay-xy(square(100, "solid", "red"), 110, 0, rectangle(30, 250, "solid", "blue")))    #Brukte funksjonen overlay-xy, lagde en firkant i fargen rød for å få frem den ene firkaten i det norske flagget

to= (overlay-xy(en, 150, 0, rectangle(180, 100, "solid", "red")))                              #la også til en blå rektangel for å få den midterste stripen i flagget

 
tre= (overlay-xy(to, 0, 110, rectangle(330, 30, "solid", "blue")))                           #Gjorde dette gjentatte ganger med ulike kordnater for å få frem norgeflagget


fire= (overlay-xy(tre, 0, 150, square(100, "solid", "red")))


fem= (overlay-xy(fire, 150, 150, rectangle(180, 100, "solid", "red")))

fem 
