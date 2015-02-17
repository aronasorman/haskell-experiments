module Main where

import Control.Monad

main :: IO ()
main = liftM (show . countLines) getContents >>= putStrLn
       where
         countLines :: String -> Int
         countLines = length . lines
