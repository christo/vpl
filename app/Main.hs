module Main where

import Vplkb

main :: IO ()
main = putStrLn $ unlines $ map show kb
