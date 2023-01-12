hasFeverSingle :: Float -> Bool
hasFeverSingle temp = temp > 37.8

hasFever :: [Float] -> [Float]
hasFever temps = filter hasFeverSingle temps

hasFever' :: [Float] -> [Float]
hasFever' temps = filter (\x -> x > 37.8) temps

itemize :: [String] -> [String]
itemize elms = map (\e -> "<li>"++e++"</li>") elms

bigCircles :: Float -> [Float] -> [Float]
bigCircles n radius = filter (\r -> r > n) radius

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine touple = filter (\t -> (snd t) > 37.8) touple

agesIn :: [Int] -> Int -> [Int]
agesIn years ref = map (\y -> ref - y) years

superName :: String -> String
superName name
    | head name == 'A' = "Super"++name
    | otherwise = name

superNames :: [String] -> [String]
superNames names = map superName names

onlyShorts :: [String] -> [String]
onlyShorts names = filter (\name -> length name < 5) names