{-# LANGUAGE OverloadedStrings #-}

module Main where

import System.IO 
import Numeric.LinearAlgebra

main :: IO()
main = do
  putStrLn "Hola, Mundo."


-- ahp :: [Matrix R] -> [Matrix R]
-- ahp [a] = 


-- CxC = [1 2 1/3 1/3 1/4; 1/2 1 1/4 1/3 1/5; 3 4 1 2 1/2 ;3 3 1/2 1 1/2; 4 5 2 2 1];
a = (5><5)
 [ 1, 2, (1 / 3), (1 / 3), (1 / 4)
 , (1 / 2), 1, (1 / 4), (1 / 3), (1 / 5)
 , 3, 4, 1, 2, (1 / 2)
 , 3, 3, (1 / 2), 1, (1 / 2)
 , 4, 5, 2, 2, 1 ] :: Matrix R

