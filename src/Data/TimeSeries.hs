module Data.TimeSeries (
    TimeSeries,
    fromList,
    toList
) where

import Data.Vector (Vector, fromList, toList)

type TimeSeries = Vector (Int, Double)

fromList :: [(Int, Double)] -> TimeSeries
fromList = Data.Vector.fromList

toList :: TimeSeries -> [(Int, Double)]
toList = Data.Vector.toList