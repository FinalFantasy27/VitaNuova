show_repeat 0 s = return ()
show_repeat n s = do
     putStrLn $ s
     show_repeat (n-1) s