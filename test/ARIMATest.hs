import Test.HUnit
import Data.TimeSeries
import Statistics.TimeSeries.ARIMA

main :: IO ()
main = do
    _ <- runTestTT tests
    return ()

tests :: Test
tests = TestList [testFitARIMA, testForecast]

testFitARIMA :: Test
testFitARIMA = TestCase $ do
    let tsData = fromList [(1, 10.0), (2, 12.5), (3, 11.0), (4, 13.5), (5, 14.0)]
    let model = fitARIMA tsData (1, 1, 1)
    assertEqual "ARIMA model fitting" (ARIMA 1 1 1 (V.fromList [0.1, 0.2])) model

testForecast :: Test
testForecast = TestCase $ do
    let model = ARIMA 1 1 1 (V.fromList [0.1, 0.2])
    let forecasts = forecast model 10
    assertEqual "ARIMA forecasting" (replicate 10 1.0) forecasts