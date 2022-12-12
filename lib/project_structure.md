### Project Tree
main
|
|--> home
        |
        |--> Page1
        |--> Page2

### View Structure

Both Pages1 and Page2 in the view has same structure.

Each page is divided into 4 sub widgets, separated by sized boxes:

1. Temperature widget -> It contains the container that displays the temperature of the city and its real feel
2. ThreeDayForecast widget -> It contains the three day forecast list tile in a column and a "5 day-forecast" button
3. WindDetails widget-> It contains the time, temperature, weather icon and wind direction
4. Details widget -> It contains the details like visibility, humidity, clouds, wind speed, pressure, etc.
5. Aqi widget-> It contains the aqi of the location