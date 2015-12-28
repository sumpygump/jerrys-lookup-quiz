DECLARE SUB center (text$)
DECLARE SUB pc (char$, y, x)
DECLARE SUB np (n$)
DECLARE SUB help ()
SCREEN 0, 0, 0, 0
h = 0
RANDOMIZE TIMER
CLS
SCREEN 0, , 1, 0
COLOR 0, 7
LOCATE 1, ((80 - LEN("HELP")) / 2)
PRINT "HELP"
COLOR 7, 0
PRINT
PRINT
PRINT "     When given the name of a store product, enter the look-up code assigned"
PRINT "to that product.  You are given three chances at each code.  When you mess up"
PRINT "the third time, you " + CHR$(34) + "Strike" + CHR$(34) + " out, at which time the correct code will be given"
PRINT "to you.  The keys you should use are the right keypad(make sure Num-Lock is on),"
PRINT "the Page Down as the UPC button, and the slash above number 8 as the clear"
PRINT "button.  When you want to exit the program, press ESC.  The Smiling Face at the"
PRINT "bottom left of the screen indicates the number of codes you have gotten right"
PRINT "so far, the number below the strike box indicates the number of strikeouts. "
PRINT "Have FUN!!!"
LOCATE 23
COLOR 15
pkey$ = "Press almost any key to return to program..."
CALL center(pkey$)
SCREEN 0, , 0, 0
RANDOMIZE TIMER
n = 0
CLS
COLOR 10
LOCATE 1
jcodes$ = "Jerry's look up codes"
CALL center(jcodes$)
LOCATE 1, 80 - LEN("Press F1 for Help.")
COLOR 7, 0
PRINT "Press ";
COLOR 0, 7
PRINT "F1";
COLOR 7, 0
PRINT " for Help."
COLOR 10, 0
LOCATE 2
lin$ = "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
CALL center(lin$)
LOCATE 1, 3
COLOR 12
PRINT "Strikes!"
LOCATE 5, 6
COLOR 12
PRINT "0"
LOCATE 2, 1
COLOR 4
PRINT "  ÚÄÂÄÂÄ¿"
PRINT "  ³ ³ ³ ³"
PRINT "  ÀÄÁÄÁÄÙ"
LOCATE 11, 23
COLOR 5
PRINT "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
LOCATE 12, 23
PRINT "º                               º"
LOCATE 13, 23
PRINT "º                               º"
LOCATE 14, 23
PRINT "º                               º"
LOCATE 15, 23
PRINT "º                               º"
LOCATE 16, 23
PRINT "º                               º"
LOCATE 17, 23
PRINT "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
COLOR 13
'pc "4", 12, 26
'pc "5", 12, 36
'pc "6", 12, 46
DO
        LOCATE 3, 4: PRINT " "
        LOCATE 3, 6: PRINT " "
        LOCATE 3, 8: PRINT " "
        COLOR 15
        LOCATE 22
        h$ = STR$(h)
        PRINT CHR$(1) + " -" + h$
        z = 1
        LOCATE 8
        nn = 0
        lmnop = 0
        n = INT(RND * 128) + 1
        COLOR 11
        IF n = 1 THEN
                CALL center("APPLES, red")
                nn = 400
        ELSEIF n = 2 THEN
                CALL center("APPLES, Tote Bag")
                nn = 333
        ELSEIF n = 3 THEN
                CALL center("APPLES, braeburn, gala")
                nn = 401
        ELSEIF n = 4 THEN
                CALL center("APPLES, Green")
                nn = 402
        ELSEIF n = 5 THEN
                CALL center("APRICOTS")
                nn = 404
        ELSEIF n = 6 THEN
                CALL center("AVACADOES")
                nn = 405
        ELSEIF n = 7 THEN
                CALL center("BANANAS")
                nn = 406
        ELSEIF n = 8 THEN
                CALL center("CANTALOUPE, small")
                nn = 417
        ELSEIF n = 9 THEN
                CALL center("CANTALOUPE, lrg.")
                nn = 430
        ELSEIF n = 10 THEN
                CALL center("CANTALOUPE, cut")
                nn = 379
        ELSEIF n = 11 THEN
                CALL center("CHERRIES")
                nn = 407
        ELSEIF n = 12 THEN
                CALL center("COCONUTS")
                nn = 388
        ELSEIF n = 13 THEN
                CALL center("GRAPES, blk.")
                nn = 409
        ELSEIF n = 14 THEN
                CALL center("GRAPES, green")
                nn = 410
        ELSEIF n = 15 THEN
                CALL center("GRAPES, red")
                nn = 411
        ELSEIF n = 16 THEN
                CALL center("GRAPEFRUIT, LRG.")
                nn = 412
        ELSEIF n = 17 THEN
                CALL center("GRAPEFRUIT, small")
                nn = 408
        ELSEIF n = 18 THEN
                CALL center("HONEYDEW")
                nn = 416
        ELSEIF n = 19 THEN
                CALL center("HONEYDEW, cut")
                nn = 380
        ELSEIF n = 20 THEN
                CALL center("KIWI FRUIT")
                nn = 421
        ELSEIF n = 21 THEN
                CALL center("LEMONS")
                nn = 413
        ELSEIF n = 22 THEN
                CALL center("LIMES")
                nn = 414
        ELSEIF n = 23 THEN
                CALL center("MANGOS")
                nn = 477
        ELSEIF n = 24 THEN
                CALL center("MELONS, variety")
                nn = 399
        ELSEIF n = 25 THEN
                CALL center("NECTARINES")
                nn = 419
        ELSEIF n = 26 THEN
                CALL center("ORANGES, lrg.")
                nn = 420
        ELSEIF n = 27 THEN
                CALL center("ORANGES, small")
                nn = 431
        ELSEIF n = 28 THEN
                CALL center("PAPAYA")
                nn = 479
        ELSEIF n = 29 THEN
                CALL center("PEACHES")
                nn = 424
        ELSEIF n = 30 THEN
                CALL center("PEARS, green")
                nn = 423
        ELSEIF n = 31 THEN
                CALL center("PEARS, red")
                nn = 387
        ELSEIF n = 32 THEN
                CALL center("PINEAPPLES")
                nn = 425
        ELSEIF n = 33 THEN
                CALL center("PINEAPPLES, cut")
                nn = 381
        ELSEIF n = 34 THEN
                CALL center("PLUMS")
                nn = 426
        ELSEIF n = 35 THEN
                CALL center("PLUMS, prune")
                nn = 427
        ELSEIF n = 36 THEN
                CALL center("POMEGRANTES")
                nn = 437
        ELSEIF n = 37 THEN
                CALL center("STAR FRUIT")
                nn = 392
        ELSEIF n = 38 THEN
                CALL center("STRAWBERRIES")
                nn = 429
        ELSEIF n = 39 THEN
                CALL center("TANGELOS")
                nn = 488
        ELSEIF n = 40 THEN
                CALL center("TANGERINES")
                nn = 493
        ELSEIF n = 41 THEN
                CALL center("WATERMELON, sliced")
                nn = 415
        ELSEIF n = 42 THEN
                CALL center("WATERMELON, whole")
                nn = 418
        ELSEIF n = 43 THEN
                CALL center("CHESTNUTS")
                nn = 386
        ELSEIF n = 44 THEN
                CALL center("ALFALFA SPROUTS")
                nn = 389
        ELSEIF n = 45 THEN
                CALL center("ARTICHOKES")
                nn = 433
        ELSEIF n = 46 THEN
                CALL center("ASPARAGUS")
                nn = 434
        ELSEIF n = 47 THEN
                CALL center("BEANS, green")
                nn = 435
        ELSEIF n = 48 THEN
                CALL center("BEANS, wax")
                nn = 473
        ELSEIF n = 49 THEN
                CALL center("BEETS")
                nn = 436
        ELSEIF n = 50 THEN
                CALL center("BROCCOLI")
                nn = 438
        ELSEIF n = 51 THEN
                CALL center("BRUSSEL SPROUTS")
                nn = 456
        ELSEIF n = 52 THEN
                CALL center("CABBAGE, green")
                nn = 440
        ELSEIF n = 53 THEN
                CALL center("CABBAGE, red")
                nn = 441
        ELSEIF n = 54 THEN
                CALL center("CARROTS, green top")
                nn = 445
        ELSEIF n = 55 THEN
                CALL center("CHINESE VEGETABLES, bok choy, nappa")
                nn = 442
        ELSEIF n = 56 THEN
                CALL center("CORN, indian")
                nn = 450
        ELSEIF n = 57 THEN
                CALL center("CORN, sweet")
                nn = 449
        ELSEIF n = 58 THEN
                CALL center("CUCUMBERS")
                nn = 451
        ELSEIF n = 59 THEN
                CALL center("CUCUMBERS, seedless")
                nn = 452
        ELSEIF n = 60 THEN
                CALL center("EGGPLANT")
                nn = 457
        ELSEIF n = 61 THEN
                CALL center("GARLIC")
                nn = 453
        ELSEIF n = 62 THEN
                CALL center("GINGER ROOT")
                nn = 463
        ELSEIF n = 63 THEN
                CALL center("GOURDS, mini pumpkins")
                nn = 454
        ELSEIF n = 64 THEN
                CALL center("HORSERADISH")
                nn = 398
        ELSEIF n = 65 THEN
                CALL center("JICAMA")
                nn = 478
        ELSEIF n = 66 THEN
                CALL center("KOHLRABI")
                nn = 474
        ELSEIF n = 67 THEN
                CALL center("LEEKS")
                nn = 459
        ELSEIF n = 68 THEN
                CALL center("LETTUCE, head")
                nn = 460
        ELSEIF n = 69 THEN
                CALL center("LETTUCE, romaine")
                nn = 461
        ELSEIF n = 70 THEN
                CALL center("LETUCE, variety")
                nn = 462
        ELSEIF n = 71 THEN
                CALL center("MUSHROOMS, bulk")
                nn = 464
        ELSEIF n = 72 THEN
                CALL center("ONIONS, green top")
                nn = 466
        ELSEIF n = 73 THEN
                CALL center("ONIONS, white")
                nn = 467
        ELSEIF n = 74 THEN
                CALL center("ONIONS, yellow")
                nn = 468
        ELSEIF n = 75 THEN
                CALL center("ONIONS, red")
                nn = 469
        ELSEIF n = 76 THEN
                CALL center("PARSLEY")
                nn = 470
        ELSEIF n = 77 THEN
                CALL center("PEAS")
                nn = 455
        ELSEIF n = 78 THEN
                CALL center("PEA PODS")
                nn = 448
        ELSEIF n = 79 THEN
                CALL center("PEPPERS, green")
                nn = 471
        ELSEIF n = 80 THEN
                CALL center("PEPPERS, red")
                nn = 472
        ELSEIF n = 81 THEN
                CALL center("PEPPERS, variety")
                nn = 465
        ELSEIF n = 82 THEN
                CALL center("POTATOES, baking")
                nn = 475
        ELSEIF n = 83 THEN
                CALL center("PUMPKINS")
                nn = 476
        ELSEIF n = 84 THEN
                CALL center("RADISHES, green top")
                nn = 480
        ELSEIF n = 85 THEN
                CALL center("RHUBARB")
                nn = 499
        ELSEIF n = 86 THEN
                CALL center("RUTABAGAS")
                nn = 482
        ELSEIF n = 87 THEN
                CALL center("SQUASH, buttercup")
                nn = 483
        ELSEIF n = 88 THEN
                CALL center("SQUASH, acorn")
                nn = 487
        ELSEIF n = 89 THEN
                CALL center("SQUASH, yellow zuchinni")
                nn = 397
        ELSEIF n = 90 THEN
                CALL center("TOMATOES")
                nn = 489
        ELSEIF n = 91 THEN
                CALL center("TOMATOES, cherry")
                nn = 490
        ELSEIF n = 92 THEN
                CALL center("TOMATOES, hydro")
                nn = 309
        ELSEIF n = 93 THEN
                CALL center("TOMATOES, roma")
                nn = 491
        ELSEIF n = 94 THEN
                CALL center("TURNIPS/PARSNIPS")
                nn = 486
        ELSEIF n = 95 THEN
                CALL center("VEGETABLES, cut up")
                nn = 432
        ELSEIF n = 96 THEN
                CALL center("YAMS")
                nn = 492
        ELSEIF n = 97 THEN
                CALL center("ZUCHINNI")
                nn = 485
        ELSEIF n = 98 THEN
                CALL center("WATERCRESS/CILANTRO")
                nn = 391
        ELSEIF n = 99 THEN
                CALL center("POP, single can")
                nn = 301
        ELSEIF n = 100 THEN
                CALL center("BOTTLES POP")
                nn = 307
        ELSEIF n = 101 THEN
                CALL center("EGGS « DOZEN")
                nn = 305
        ELSEIF n = 102 THEN
                CALL center("BUTTER 1 STICK")
                nn = 306
        ELSEIF n = 103 THEN
                CALL center("BULK COFFEE")
                nn = 300
        ELSEIF n = 104 THEN
                CALL center("SINGLE WATER")
                nn = 302
        ELSEIF n = 105 THEN
                CALL center("BULK WATER")
                nn = 310
        ELSEIF n = 106 THEN
                CALL center("SALAD BAR")
                nn = 750
        ELSEIF n = 107 THEN
                CALL center("VALUE BREAD")
                nn = 304
        ELSEIF n = 108 THEN
                CALL center("BAGELS, small")
                nn = 127
        ELSEIF n = 109 THEN
                CALL center("BAGELS, large")
                nn = 128
        ELSEIF n = 110 THEN
                CALL center("BRAT BUNS")
                nn = 129
        ELSEIF n = 111 THEN
                CALL center("BREAD STICKS")
                nn = 130
        ELSEIF n = 112 THEN
                CALL center("COOKIES, jumbo")
                nn = 131
        ELSEIF n = 113 THEN
                CALL center("CRISPIES")
                nn = 132
        ELSEIF n = 114 THEN
                CALL center("DONUT HOLES")
                nn = 133
        ELSEIF n = 115 THEN
                CALL center("FRENCH ROLLS")
                nn = 134
        ELSEIF n = 116 THEN
                CALL center("HARD ROLLS")
                nn = 135
        ELSEIF n = 117 THEN
                CALL center("KAISER ROLLS")
                nn = 137
        ELSEIF n = 118 THEN
                CALL center("BLUEBERRY MUFFINS")
                nn = 138
        ELSEIF n = 119 THEN
                CALL center("BRAN MUFFINS")
                nn = 139
        ELSEIF n = 120 THEN
                CALL center("CROISSANTS")
                nn = 140
        ELSEIF n = 121 THEN
                CALL center("CANDIED APPLES")
                nn = 393
        ELSEIF n = 122 THEN
                CALL center("HANDY SIZE LOGS, case")
                nn = 700
        ELSEIF n = 123 THEN
                CALL center("GIANT SIZE LOGS, case")
                nn = 701
        ELSEIF n = 124 THEN
                CALL center("40 # PELLETS")
                nn = 121
        ELSEIF n = 125 THEN
                CALL center("NO RUST SALT")
                nn = 123
        ELSEIF n = 126 THEN
                CALL center("50 # ROCK SALT")
                nn = 124
        ELSEIF n = 127 THEN
                CALL center("SOLAR SALT")
                nn = 125
        ELSEIF n = 128 THEN
                CALL center("BLOCK SALT")
                nn = 126
        ELSE
                qrqrqr = 4
        END IF
        n$ = STR$(nn)
        GOSUB ns
        LOCATE 8
        PRINT STRING$(80, 32)
LOOP


ns:
y = 12
x = 26
t = 0
b$ = ""
DO
        DO
                DO
                        a$ = INKEY$
                LOOP WHILE a$ = ""
                IF a$ = "1" THEN
                        EXIT DO
                ELSEIF a$ = "2" THEN
                        EXIT DO
                ELSEIF a$ = "3" THEN
                        EXIT DO
                ELSEIF a$ = "4" THEN
                        EXIT DO
                ELSEIF a$ = "5" THEN
                        EXIT DO
                ELSEIF a$ = "6" THEN
                        EXIT DO
                ELSEIF a$ = "7" THEN
                        EXIT DO
                ELSEIF a$ = "8" THEN
                        EXIT DO
                ELSEIF a$ = "9" THEN
                        EXIT DO
                ELSEIF a$ = "0" THEN
                        EXIT DO
                ELSEIF a$ = "/" THEN
                        t = 888.888
                        EXIT DO
                ELSEIF a$ = CHR$(27) THEN
                        t = 65
                        EXIT DO
                ELSEIF MID$(a$, 2, 1) = ";" THEN
                        SCREEN 0, , 0, 1
                        DO
                                rtr$ = INKEY$
                        LOOP WHILE rtr$ = ""
                        SCREEN 0, , 0, 0
                ELSEIF MID$(a$, 2, 1) = "Q" THEN
                        GOSUB ans
                        IF lmnop = 5 THEN
                                RETURN
                        ELSE
                                t = 0
                        END IF
                ELSE
                        y = 45345.4
                END IF
        LOOP
        IF t = 3 THEN
                rrtee = 889.76
        ELSEIF t = 65 THEN
                GOSUB fin
        ELSEIF t = 888.888 THEN
                GOSUB delsquare
                b$ = ""
                t = 0
        ELSE
                b$ = b$ + a$
                IF LEN(b$) = 1 THEN pc b$, 12, 46
                IF LEN(b$) = 2 THEN
                        pc MID$(b$, 2, 1), 12, 46
                        pc MID$(b$, 1, 1), 12, 36
                END IF
                IF LEN(b$) = 3 THEN
                        pc MID$(b$, 3, 1), 12, 46
                        pc MID$(b$, 2, 1), 12, 36
                        pc MID$(b$, 1, 1), 12, 26
                END IF
                t = t + 1
        END IF
                


LOOP

                

ans:
t = 0
b$ = " " + b$
IF b$ = n$ THEN
        GOSUB delsquare
        lmnop = 5
        h = h + 1
        RETURN
ELSE
        COLOR 12
        LOCATE 3, z * 2 + 2
        PRINT "X"
        IF z = 3 THEN
                GOSUB delsquare
                LOCATE 9
                COLOR 28
                CALL center("STRIKE-OUT!!!")
                strikeout = strikeout + 1
                LOCATE 5, 5
                COLOR 12
                PRINT strikeout
                GOSUB delsquare
                LOCATE 10
                COLOR 11
                CALL center("The correct answer is" + n$)
                LOCATE 18
                COLOR 7
                CALL center("Press almost any key to continue...")
                DO
                        F$ = INKEY$
                LOOP WHILE F$ = ""
                LOCATE 18
                CALL center("                                   ")
                LOCATE 10
                CALL center("                                   ")
                LOCATE 9
                CALL center("                                   ")
                lmnop = 5
                RETURN
        ELSE
                z = z + 1
                t = 0
                GOSUB delsquare
                b$ = ""
                RETURN
        END IF
END IF
RETURN


delsquare:
LOCATE 12, 24
PRINT STRING$(30, 32)
LOCATE 13, 24
PRINT STRING$(30, 32)
LOCATE 14, 24
PRINT STRING$(30, 32)
LOCATE 15, 24
PRINT STRING$(30, 32)
LOCATE 16, 24
PRINT STRING$(30, 32)
RETURN



fin:
END

SUB center (text$)

        PRINT TAB((80 - LEN(text$)) / 2); text$

END SUB

SUB np (n$)


END SUB

SUB pc (char$, y, x)

        COLOR 15
        LOCATE y, x
        IF char$ = "1" THEN
                PRINT " ÖÄ·   ": LOCATE y + 1, x
                PRINT "   º   ": LOCATE y + 2, x
                PRINT "   º   ": LOCATE y + 3, x
                PRINT "   º   ": LOCATE y + 4, x
                PRINT " ÄÄÐÄÄ "
        ELSEIF char$ = "2" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "      º": LOCATE y + 2, x
                PRINT "ÖÄÄÄÄÄ½": LOCATE y + 3, x
                PRINT "º      ": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½"
        ELSEIF char$ = "3" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "      º": LOCATE y + 2, x
                PRINT "   ÄÄÄ¶": LOCATE y + 3, x
                PRINT "      º": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½"
        ELSEIF char$ = "4" THEN
                PRINT "Ò     Ò": LOCATE y + 1, x
                PRINT "º     º": LOCATE y + 2, x
                PRINT "ÓÄÄÄÄÄ¶": LOCATE y + 3, x
                PRINT "      º": LOCATE y + 4, x
                PRINT "      Ð"
        ELSEIF char$ = "5" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "º      ": LOCATE y + 2, x
                PRINT "ÓÄÄÄÄÄ·": LOCATE y + 3, x
                PRINT "      º": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½":
        ELSEIF char$ = "6" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "º      ": LOCATE y + 2, x
                PRINT "ÇÄÄÄÄÄ·": LOCATE y + 3, x
                PRINT "º     º": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½"
        ELSEIF char$ = "7" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "     Ö½": LOCATE y + 2, x
                PRINT "     º ": LOCATE y + 3, x
                PRINT "    º  ": LOCATE y + 4, x
                PRINT "    Ð  "
        ELSEIF char$ = "8" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "º     º": LOCATE y + 2, x
                PRINT "ÇÄÄÄÄÄ¶": LOCATE y + 3, x
                PRINT "º     º": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½"
        ELSEIF char$ = "9" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "º     º": LOCATE y + 2, x
                PRINT "ÓÄÄÄÄÄ¶": LOCATE y + 3, x
                PRINT "      º": LOCATE y + 4, x
                PRINT "      Ð"

        ELSEIF char$ = "0" THEN
                PRINT "ÖÄÄÄÄÄ·": LOCATE y + 1, x
                PRINT "º     º": LOCATE y + 2, x
                PRINT "º     º": LOCATE y + 3, x
                PRINT "º     º": LOCATE y + 4, x
                PRINT "ÓÄÄÄÄÄ½"
        END IF

                

END SUB

