module Main where

import           Network.HTTP.UserAgent

main :: IO ()
main = print =<< randomAgent
