square :: Int -> Int
square x = x^2
  
squareAll :: [Int] -> [Int]
squareAll lis = map square lis 
   
useHaskell :: String -> String
useHaskell you = "Hey " ++ you ++ ", use Haskell!"
   
beHappy :: [String] -> [String]
beHappy people = map useHaskell people
   
doctor :: String -> Bool
doctor nome = (take 2 nome) == "Dr"
   
adult :: Int -> Bool
adult age = age >= 18