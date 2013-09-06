---------------------------------
-- Chapter Baby's first functions
---------------------------------

-- Function definiton
-- Functions always return something
doubleMe x = x + x

-- Another function
doubleUs x y = doubleMe x + doubleMe y

-- The ' is a valid char. Convention : strict (non-lazy) or slightly modified versions
doubleSmallNumber' x = if x > 100
                        then x
                        else doubleMe x

-- yo is not a variable, but a function without parameter !
yo = "Yo !"
-- yo = 4 -- Fail because definitions are immutable
