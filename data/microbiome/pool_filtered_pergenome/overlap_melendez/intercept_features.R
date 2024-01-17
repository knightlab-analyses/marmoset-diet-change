##LOOK AT INTERCEPT OF IDs for Six pairs

tammy_bane <- read.csv("tammy_bane.csv")
ellen_mac <- read.csv("ellen_mac.csv")
toph_kenny <- read.csv ("toph_kenny.csv")
reba_chrome <- read.csv("reba_chrome.csv")
martina_abel <- read.csv("martina_abel.csv")
gadget_kirk <- read.csv("gadget_kirk.csv")

intersection_feature <- Reduce(intersect,list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, 
                                              toph_kenny$Feature.ID, reba_chrome$Feature.ID, 
                                              martina_abel$Feature.ID, gadget_kirk$Feature.ID))


tb_ma <- Reduce(intersect, list (tammy_bane$Feature.ID, martina_abel$Feature.ID))
print(tb_ma)

tb_rc <- Reduce(intersect, list (tammy_bane$Feature.ID, reba_chrome$Feature.ID))
print(tb_rc)

tb_tk <- Reduce(intersect, list (tammy_bane$Feature.ID, toph_kenny$Feature.ID))
print(tb_tk)

tb_em <- Reduce(intersect, list (tammy_bane$Feature.ID, ellen_mac$Feature.ID))
print(tb_em)

tb_gk <- Reduce(intersect, list (tammy_bane$Feature.ID, gadget_kirk$Feature.ID))
print(tb_gk)

ma_rc <- Reduce(intersect, list(martina_abel$Feature.ID, reba_chrome$Feature.ID))
print(ma_rc)

ma_tk <- Reduce(intersect, list(martina_abel$Feature.ID, toph_kenny$Feature.ID))
print(ma_tk)

ma_em <- Reduce(intersect, list(martina_abel$Feature.ID, ellen_mac$Feature.ID))
print(ma_em)

ma_gk <- Reduce(intersect, list(martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(ma_gk)

rc_tk <- Reduce(intersect, list(reba_chrome$Feature.ID, toph_kenny$Feature.ID))
print(rc_tk)

rc_em <- Reduce(intersect, list(reba_chrome$Feature.ID, ellen_mac$Feature.ID))
print(rc_em)

rc_gk <- Reduce(intersect, list(reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(rc_gk)

tk_em <- Reduce(intersect, list(toph_kenny$Feature.ID, ellen_mac$Feature.ID))
print(tk_em)

tk_gk <- Reduce(intersect, list(toph_kenny$Feature.ID, gadget_kirk$Feature.ID))
print(tk_gk)

em_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, gadget_kirk$Feature.ID))
print(em_gk)

#### groups of 5 using C(6, 5) = 6! / (5! * (6 - 5)!)
#there are six options
#TB, EM, TK, RC, MA
tb_em_tk_rc_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(tb_em_tk_rc_ma)

#TB, EM, TK, RC, GK
tb_em_tk_rc_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_tk_rc_gk)

#TB, EM, TK, MA, GK
tb_em_tk_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_tk_ma_gk)

#TB, EM, RC, MA, GK
tb_em_rc_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_rc_ma_gk)

#TB, TK, RC, MA, GK
tb_tk_rc_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_tk_rc_ma_gk)

#EM, TK, RC, MA, GK
em_tk_rc_ma_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(em_tk_rc_ma_gk)

#lets try groups of four C(6, 4) = 6! / (4! * (6 - 4)!)
#fifteeen options

#TB, EM, TK, RC
tb_em_tk_rc <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID))
print(tb_em_tk_rc)

#TB, EM, TK, MA
tb_em_tk_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID))
print(tb_em_tk_ma)

#TB, EM, TK, GK
tb_em_tk_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_tk_gk)

#TB, EM, RC, MA
tb_em_rc_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(tb_em_rc_ma)

#TB, EM, RC, GK
tb_em_rc_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_rc_gk)

#TB, EM, MA, GK
tb_em_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_ma_gk)

#TB, TK, RC, MA
tb_tk_rc_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(tb_tk_rc_ma)

#TB, TK, RC, GK
tb_tk_rc_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(tb_tk_rc_gk)

#TB, TK, MA, GK
tb_tk_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_tk_ma_gk)
#woohoo winner

#TB, RC, MA, GK
tb_rc_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_rc_ma_gk)

#EM, TK, RC, MA
em_tk_rc_ma <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(em_tk_rc_ma)

#EM, TK, RC, GK
em_tk_rc_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(em_tk_rc_gk)
##woohoo another winner!

#EM, TK, MA, GK
em_tk_ma_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(em_tk_ma_gk)

#EM, RC, MA, GK
em_rc_ma_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(em_rc_ma_gk)

#TK, RC, MA, GK
tk_rc_ma_gk <- Reduce(intersect, list(toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tk_rc_ma_gk)



#groups of three, 20 options:

#TB, EM, TK
tb_em_tk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, toph_kenny$Feature.ID))
print(tb_em_tk)

#TB, EM, RC
tb_em_rc <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, reba_chrome$Feature.ID))
print(tb_em_rc)

#TB, EM, MA
tb_em_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, martina_abel$Feature.ID))
print(tb_em_ma)

#TB, EM, GK
tb_em_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, ellen_mac$Feature.ID, gadget_kirk$Feature.ID))
print(tb_em_gk)

#TB, TK, RC
tb_tk_rc <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID))
print(tb_tk_rc)

#TB, TK, MA
tb_tk_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID))
print(tb_tk_ma)
#woohoo winner winner

#TB, TK, GK
tb_tk_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, toph_kenny$Feature.ID, gadget_kirk$Feature.ID))
print(tb_tk_gk)
#woohoo chicken winner!

#TB, RC, MA
tb_rc_ma <- Reduce(intersect, list(tammy_bane$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(tb_rc_ma)

#TB, RC, GK
tb_rc_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(tb_rc_gk)
#winner winner! thts three groups of three now

#TB, MA, GK
tb_ma_gk <- Reduce(intersect, list(tammy_bane$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tb_ma_gk)
#winner winner thats four now

#EM, TK, RC
em_tk_rc <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, reba_chrome$Feature.ID))
print(em_tk_rc)
#winner winner five now

#EM, TK, MA
em_tk_ma <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, martina_abel$Feature.ID))
print(em_tk_ma)

#EM, TK, GK
em_tk_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, toph_kenny$Feature.ID, gadget_kirk$Feature.ID))
print(em_tk_gk)
#winner winner that is six

#EM, RC, MA
em_rc_ma <- Reduce(intersect, list(ellen_mac$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(em_rc_ma)
#winner winner thast seven groups of three that have matches

#EM, RC, GK
em_rc_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(em_rc_gk)
#winner winner group, now thats eight

#EM, MA, GK
em_ma_gk <- Reduce(intersect, list(ellen_mac$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(em_ma_gk)

#TK, RC, MA
tk_rc_ma <- Reduce(intersect, list(toph_kenny$Feature.ID, reba_chrome$Feature.ID, martina_abel$Feature.ID))
print(tk_rc_ma)

#TK, RC, GK
tk_rc_gk <- Reduce(intersect, list(toph_kenny$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID))
print(tk_rc_gk)
#winner winner that is nine groups

#TK, MA, GK
tk_ma_gk <- Reduce(intersect, list(toph_kenny$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(tk_ma_gk)
      
#RC, MA, GK
rc_ma_gk <- Reduce(intersect, list(reba_chrome$Feature.ID, martina_abel$Feature.ID, gadget_kirk$Feature.ID))
print(rc_ma_gk)



ma_tb_tk_gk <- Reduce(intersect, list(martina_abel$Feature.ID, tammy_bane$Feature.ID, toph_kenny$Feature.ID, gadget_kirk$Feature.ID))
print(ma_tb_tk_gk)

rc_em_gk_tk <- Reduce(intersect, list(ellen_mac$Feature.ID, reba_chrome$Feature.ID, gadget_kirk$Feature.ID, toph_kenny$Feature.ID))
print(rc_em_gk_tk)


