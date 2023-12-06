# TRIGGER

This Flutter app consists of four widgets:https://github.com/ShankarGanesh13

1. Widget 1(Triangle): Displays success or try again message.
2. Widget 2(Circle): Tappable button triggering random number generation.
3. Widget 3(Square): Displays a random number between 0 and 59.
4. Widget 4(Rectangle): To reset saved score to 0

## Functionality

- On tapping Widget 2, Widget 3 generates a random number between 0 and 59.
- If the displayed random number equals the 'seconds' part of the current timestamp:
  - Widget 1 displays a success message.
- If the displayed random number does not equal the 'seconds' part of the current timestamp:
  - Widget 1 displays a try again message.

## Success Count

- The success message also displays the total number of times success was achieved since the user installed the app.
- the Success count is stored in shared_preferences

## How to Run

1. Clone the repository.
2. Open the project in a Flutter-compatible IDE.
3. Run the app on an emulator or physical device.

## Developer

- Shankar Ganesh I
  - GitHub: ShankarGanesh13
  - LinkedIn: linkedin.com/in/shankar-ganesh-4106011a7
  - email: shankarganesh.i13998@gmail.com
  - phone: 9842129106


