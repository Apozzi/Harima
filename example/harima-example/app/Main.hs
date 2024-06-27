module Main where

import Graphics.Matplotlib

main :: IO ()
main = do
  plot (ts,[point (ds,es) (Cross,red),line fs blue])
  title "Testing plot package:"
  subtitle "with 1 second of a 15Hz sine wave"
  xlabel "time (s)"
  ylabel "amplitude"
  yrange Linear (-1.25) 1.25
     