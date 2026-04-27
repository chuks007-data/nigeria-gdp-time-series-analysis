## Time Series Analysis on Nigeria's GDP rate

## Model Used
ARIMA (AutoRegressive Integrated Moving Average) model was used for forecasting.

## Files
- nigeria_gdp_analysis.R  (R code)
- gdp_data.csv (dataset)

## Summary
This project analyzes Nigeria's GDP growth from 1990–2023, identifies trends, and applies ARIMA for forecasting future values.

## Model Specification

An ARIMA (AutoRegressive Integrated Moving Average) model was applied to the GDP time series data.

- The series was tested for stationarity
- Differencing was applied where necessary
- Model selection was based on information criteria

The model was then used to generate forecasts for the period 2024–2028.

## Conclusion

The ARIMA model forecasts a moderate and relatively steady GDP growth rate for Nigeria over the next five years (2024–2028), with point estimates averaging approximately 3.6%.

However, the forecast is associated with significant uncertainty, as reflected in the wide confidence intervals. For example, the 2024 forecast ranges from -4.33% to 11.29% (80% confidence interval) and from -8.47% to 15.42% (95% confidence interval).

This indicates that while the baseline projection suggests continued economic growth, there is a substantial risk of variability in actual outcomes. The wide intervals highlight the underlying volatility in Nigeria’s economic performance and the limitations of relying solely on historical data for forecasting.

Overall, the model provides useful directional insight but should be interpreted with caution in decision making contexts.

