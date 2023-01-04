
printRev = do
    putStr $ "Type a line:"
    line <- getLine
    putStr $ "Reversed:"
    let line' = reverse line in putStrLn line'