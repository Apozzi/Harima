module Data.TimeSeries (
    TimeSeries,
    fromList,
    toList
) where

import qualified Data.Vector as V

type TimeSeries = V.Vector (Int, Double)

fromList :: [(Int, Double)] -> TimeSeries
fromList = V.fromList

toList :: TimeSeries -> [(Int, Double)]
toList = V.toList