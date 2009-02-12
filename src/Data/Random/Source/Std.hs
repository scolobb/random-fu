{-
 -      ``Data/Random/Source/Std''
 -}
{-# LANGUAGE
    MultiParamTypeClasses, FlexibleInstances
  #-}

module Data.Random.Source.Std where

import Data.Random.Source

data StdRandom = StdRandom

instance MonadRandom m => RandomSource m StdRandom where
    getRandomBytesFrom StdRandom = getRandomBytes
    getRandomWordsFrom StdRandom = getRandomWords

instance MonadRandomSeed m => RandomSourceSeed m StdRandom where
    setRandomStateFor StdRandom = setRandomState
