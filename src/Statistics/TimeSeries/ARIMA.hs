module Statistics.TimeSeries.ARIMA (
    ARIMA(..), 
    fitARIMA,
    forecast
) where

import Data.TimeSeries (TimeSeries)
import Data.Vector (Vector)
import qualified Data.Vector as V

data ARIMA = ARIMA {
    p :: Int,
    d :: Int,
    q :: Int,
    coefficients :: Vector Double
} deriving (Show, Eq)

fitARIMA :: TimeSeries -> (Int, Int, Int) -> ARIMA
fitARIMA ts (p, d, q) = ARIMA p d q (V.fromList [0.1, 0.2])

forecast :: ARIMA -> Int -> [Double]
forecast model n = replicate n 1.0