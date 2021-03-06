module HeadingSystem
  # sample data - https://www.meteoblue.com/en/weather/archive/export/excel_canada_5950658?daterange=2019-05-06+to+2019-05-13&params=&params%5B%5D=11%3B2+m+above+gnd&params%5B%5D=52%3B2+m+above+gnd&utc_offset=-6&aggregation=hourly&temperatureunit=CELSIUS&windspeedunit=MILE_PER_HOUR
  def self.readings
    [
      { temperature: 3.24, humidity: 52.00 },
      { temperature: 1.90, humidity: 57.00 },
      { temperature: 0.69, humidity: 62.00 },
      { temperature: -0.69, humidity: 68.00 },
      { temperature: -1.00, humidity: 70.00 },
      { temperature: -1.04, humidity: 72.00 },
      { temperature: -2.52, humidity: 78.00 },
      { temperature: 0.20, humidity: 65.00 },
      { temperature: 3.24, humidity: 54.00 },
      { temperature: 5.72, humidity: 47.00 },
      { temperature: 7.17, humidity: 39.00 },
      { temperature: 8.20, humidity: 36.00 },
      { temperature: 9.25, humidity: 35.00 },
      { temperature: 10.31, humidity: 34.00 },
      { temperature: 11.21, humidity: 33.00 },
      { temperature: 12.00, humidity: 32.00 },
      { temperature: 12.00, humidity: 33.00 },
      { temperature: 11.81, humidity: 33.00 },
      { temperature: 11.86, humidity: 33.00 },
      { temperature: 11.90, humidity: 34.00 },
      { temperature: 11.86, humidity: 34.00 },
      { temperature: 10.86, humidity: 37.00 },
      { temperature: 10.41, humidity: 38.00 },
      { temperature: 9.83, humidity: 40.00 },
      { temperature: 9.31, humidity: 42.00 },
      { temperature: 8.83, humidity: 44.00 },
      { temperature: 8.52, humidity: 46.00 },
      { temperature: 8.11, humidity: 47.00 },
      { temperature: 7.49, humidity: 49.00 },
      { temperature: 7.25, humidity: 50.00 },
      { temperature: 3.82, humidity: 65.00 },
      { temperature: 5.70, humidity: 61.00 },
      { temperature: 9.19, humidity: 51.00 },
      { temperature: 10.40, humidity: 49.00 },
      { temperature: 9.61, humidity: 56.00 },
      { temperature: 9.10, humidity: 63.00 },
      { temperature: 9.62, humidity: 65.00 },
      { temperature: 9.47, humidity: 67.00 },
      { temperature: 9.66, humidity: 66.00 },
      { temperature: 9.87, humidity: 63.00 },
      { temperature: 10.22, humidity: 60.00 },
      { temperature: 11.11, humidity: 54.00 },
      { temperature: 11.02, humidity: 52.00 },
      { temperature: 10.95, humidity: 42.00 },
      { temperature: 10.37, humidity: 40.00 },
      { temperature: 7.60, humidity: 44.00 },
      { temperature: 6.41, humidity: 45.00 },
      { temperature: 5.51, humidity: 46.00 },
      { temperature: 4.53, humidity: 48.00 },
      { temperature: 3.55, humidity: 51.00 },
      { temperature: 2.65, humidity: 53.00 },
      { temperature: 1.63, humidity: 56.00 },
      { temperature: 0.41, humidity: 61.00 },
      { temperature: -0.52, humidity: 66.00 },
      { temperature: -1.06, humidity: 70.00 },
      { temperature: 2.37, humidity: 58.00 },
      { temperature: 5.97, humidity: 45.00 },
      { temperature: 8.22, humidity: 39.00 },
      { temperature: 9.89, humidity: 34.00 },
      { temperature: 11.23, humidity: 30.00 },
      { temperature: 12.19, humidity: 27.00 },
      { temperature: 13.02, humidity: 26.00 },
      { temperature: 13.61, humidity: 25.00 },
      { temperature: 14.06, humidity: 25.00 },
      { temperature: 13.34, humidity: 26.00 },
      { temperature: 13.41, humidity: 27.00 },
      { temperature: 13.77, humidity: 28.00 },
      { temperature: 12.99, humidity: 29.00 },
      { temperature: 12.25, humidity: 33.00 },
      { temperature: 10.34, humidity: 38.00 },
      { temperature: 9.17, humidity: 41.00 },
      { temperature: 8.22, humidity: 46.00 },
      { temperature: 7.97, humidity: 48.00 },
      { temperature: 7.38, humidity: 52.00 },
      { temperature: 6.85, humidity: 58.00 },
      { temperature: 6.28, humidity: 66.00 },
      { temperature: 5.79, humidity: 74.00 },
      { temperature: 5.57, humidity: 77.00 },
      { temperature: 5.70, humidity: 76.00 },
      { temperature: 6.69, humidity: 72.00 },
      { temperature: 8.47, humidity: 63.00 },
      { temperature: 10.48, humidity: 56.00 },
      { temperature: 11.64, humidity: 53.00 },
      { temperature: 13.01, humidity: 43.00 },
      { temperature: 14.03, humidity: 39.00 },
      { temperature: 15.03, humidity: 36.00 },
      { temperature: 15.83, humidity: 33.00 },
      { temperature: 16.49, humidity: 31.00 },
      { temperature: 16.92, humidity: 30.00 },
      { temperature: 16.35, humidity: 31.00 },
      { temperature: 16.21, humidity: 32.00 },
      { temperature: 16.07, humidity: 33.00 },
      { temperature: 15.53, humidity: 36.00 },
      { temperature: 12.98, humidity: 45.00 },
      { temperature: 11.29, humidity: 52.00 },
      { temperature: 11.11, humidity: 54.00 },
      { temperature: 11.21, humidity: 53.00 },
      { temperature: 10.66, humidity: 56.00 },
      { temperature: 10.17, humidity: 58.00 },
      { temperature: 9.72, humidity: 60.00 },
      { temperature: 9.46, humidity: 61.00 },
      { temperature: 8.79, humidity: 65.00 },
      { temperature: 7.91, humidity: 71.00 },
      { temperature: 10.79, humidity: 59.00 },
      { temperature: 13.27, humidity: 52.00 },
      { temperature: 14.79, humidity: 49.00 },
      { temperature: 14.73, humidity: 50.00 },
      { temperature: 15.39, humidity: 44.00 },
      { temperature: 15.20, humidity: 41.00 },
      { temperature: 16.64, humidity: 37.00 },
      { temperature: 16.84, humidity: 35.00 },
      { temperature: 15.49, humidity: 36.00 },
      { temperature: 15.38, humidity: 35.00 },
      { temperature: 16.36, humidity: 31.00 },
      { temperature: 15.59, humidity: 29.00 },
      { temperature: 15.08, humidity: 29.00 },
      { temperature: 13.95, humidity: 32.00 },
      { temperature: 10.78, humidity: 39.00 },
      { temperature: 8.32, humidity: 48.00 },
      { temperature: 7.26, humidity: 51.00 },
      { temperature: 6.47, humidity: 54.00 },
      { temperature: 5.62, humidity: 58.00 },
      { temperature: 4.71, humidity: 61.00 },
      { temperature: 3.87, humidity: 65.00 },
      { temperature: 3.13, humidity: 68.00 },
      { temperature: 2.43, humidity: 72.00 },
      { temperature: 2.12, humidity: 74.00 },
      { temperature: 4.64, humidity: 66.00 },
      { temperature: 8.27, humidity: 56.00 },
      { temperature: 10.73, humidity: 47.00 },
      { temperature: 12.58, humidity: 41.00 },
      { temperature: 14.13, humidity: 36.00 },
      { temperature: 15.44, humidity: 32.00 },
      { temperature: 16.60, humidity: 29.00 },
      { temperature: 17.61, humidity: 27.00 },
      { temperature: 18.43, humidity: 25.00 },
      { temperature: 18.98, humidity: 25.00 },
      { temperature: 19.34, humidity: 24.00 },
      { temperature: 19.41, humidity: 24.00 },
      { temperature: 19.18, humidity: 25.00 },
      { temperature: 18.27, humidity: 29.00 },
      { temperature: 14.79, humidity: 38.00 },
      { temperature: 12.56, humidity: 45.00 },
      { temperature: 11.31, humidity: 48.00 },
      { temperature: 10.83, humidity: 48.00 },
      { temperature: 10.37, humidity: 49.00 },
      { temperature: 9.48, humidity: 52.00 },
      { temperature: 9.18, humidity: 54.00 },
      { temperature: 8.89, humidity: 56.00 },
      { temperature: 8.64, humidity: 57.00 },
      { temperature: 8.45, humidity: 58.00 },
      { temperature: 10.18, humidity: 54.00 },
      { temperature: 12.59, humidity: 47.00 },
      { temperature: 15.29, humidity: 42.00 },
      { temperature: 17.55, humidity: 40.00 },
      { temperature: 19.43, humidity: 36.00 },
      { temperature: 20.95, humidity: 34.00 },
      { temperature: 22.28, humidity: 32.00 },
      { temperature: 23.17, humidity: 30.00 },
      { temperature: 23.55, humidity: 27.00 },
      { temperature: 23.13, humidity: 27.00 },
      { temperature: 21.88, humidity: 29.00 },
      { temperature: 21.53, humidity: 30.00 },
      { temperature: 21.52, humidity: 31.00 },
      { temperature: 20.41, humidity: 39.00 },
      { temperature: 18.54, humidity: 43.00 },
      { temperature: 17.93, humidity: 48.00 },
      { temperature: 16.87, humidity: 51.00 },
      { temperature: 15.47, humidity: 53.00 },
      { temperature: 14.41, humidity: 52.00 },
      { temperature: 13.68, humidity: 48.00 },
      { temperature: 13.02, humidity: 45.00 },
      { temperature: 11.92, humidity: 47.00 },
      { temperature: 11.20, humidity: 50.00 },
      { temperature: 10.77, humidity: 52.00 },
      { temperature: 11.62, humidity: 55.00 },
      { temperature: 13.05, humidity: 55.00 },
      { temperature: 13.96, humidity: 55.00 },
      { temperature: 15.04, humidity: 52.00 },
      { temperature: 16.16, humidity: 49.00 },
      { temperature: 17.04, humidity: 46.00 },
      { temperature: 16.65, humidity: 46.00 },
      { temperature: 17.17, humidity: 44.00 },
      { temperature: 17.69, humidity: 41.00 },
      { temperature: 17.47, humidity: 41.00 },
      { temperature: 16.94, humidity: 44.00 },
      { temperature: 16.83, humidity: 45.00 },
      { temperature: 16.87, humidity: 44.00 },
      { temperature: 16.65, humidity: 44.00 },
      { temperature: 15.19, humidity: 48.00 },
      { temperature: 14.57, humidity: 49.00 },
      { temperature: 14.15, humidity: 50.00 }
    ]
  end
end
