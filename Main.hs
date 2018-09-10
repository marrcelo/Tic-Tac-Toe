module Main where

    import HumanVsHuman (newGameHxH)
    import HumanVsComputer (newGameHxC)    
    
    main = run
    
    run :: IO()
    run = do 
        putStrLn "Select one option and press <Enter>: "
        putStrLn "1) HumanVsHuman "
        putStrLn "2) HumanVsComputer"
        putStrLn "3) Sair"
        option <- getChar
        getChar
        doOption option
    
    doOption :: Char -> IO()
    doOption '1' = do 
            newGameHxH
            run
    doOption '2' = do
            newGameHxC
            run
    doOption '3' = do
            putStrLn "Leving game..."
            return ()
    doOption otherwise = do 
            putStr "\ESC[2J"
            putStrLn "ERROR: Invalid option"
            run
            