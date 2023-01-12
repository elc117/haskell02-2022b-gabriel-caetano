import Text.Printf

screenSize :: (Float, Float)
screenSize = (500, 500)

-- Get center of the screen
screenCenter :: (Float, Float) -> (Float, Float)
screenCenter (w, h) = (w/2, h/2)

-- String inicial do SVG
svgBegin :: (Float, Float) -> String
svgBegin (w, h) = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: (Int, Int) -> Int -> String -> String 
svgCircle (x, y) r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

svgGrowLine :: Int -> String
svgGrowLine y =
  (svgCircle (10, y+10) 10 "rgb(10, 145, 32, 0.4)") ++ 
  (svgCircle (40, y+20) 20 "rgb(10, 145, 32, 0.4)") ++
  (svgCircle (90, y+30) 30 "rgb(10, 145, 32, 0.4)") ++
  (svgCircle (160, y+40) 40 "rgb(10, 145, 32, 0.4)") ++
  (svgCircle (250, y+50) 50 "rgb(10, 145, 32, 0.4)") ++
  (svgCircle (360, y+60) 60 "rgb(10, 145, 32, 0.4)")

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin screenSize ++ 
  svgGrowLine 0 ++ 
  svgGrowLine 120 ++ 
  svgGrowLine 240 ++ 
  svgGrowLine 360 ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll