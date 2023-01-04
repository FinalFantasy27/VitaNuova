
get_max_av xs = (maximum xs, sum xs /
                                (fromIntegral $ length xs))

main = do 
    ss <- readFile "input_data.txt"
    let ds = [read x :: Float | x <- words ss]
    let (m, a) = get_max_av ds
    let results = "maximum = " ++ show m ++ "\naverage = " ++show a ++"\n"
    writeFile "output_data.txt" results