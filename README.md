# Attack on Titan App

This project is a mobile application dedicated to the world of **Attack on Titan**, built using Flutter. It integrates with the Attack on Titan API provided by Zach McMullen to fetch and display information about:

- **Characters**
- **Episodes**
- **Locations**
- **Organizations**
- **Titans**

The app aims to provide a comprehensive and immersive experience for fans of the series by delivering detailed information about the characters, titans, organizations, and more from the Attack on Titan universe.

## Features

- **Character Information:** View detailed information about the characters, including their backstory, affiliations, and appearances.
- **Episodes List:** Browse through episodes and view information such as air dates, episode summaries, and more.
- **Locations:** Discover key locations in the Attack on Titan world.
- **Organizations:** Learn about the different organizations in the series.
- **Titans:** Find out more about the titans that play a central role in the story.

## Technologies Used

- **Flutter** for building the mobile application.
- **Dart** for app development.
- **Zach McMullen’s Attack on Titan API** for retrieving data related to the anime series.
  - API documentation can be found [here](https://github.com/ZachMcM/attack-on-titan-api).
- **BLoC** for state management in the app.
- **Flutter Offline** to handle offline capabilities and ensure the app functions even when the network is unavailable.
- **Dio** for making HTTP requests to the Attack on Titan API.
- **Device Preview** for previewing and testing the UI on various devices.
- **Google Fonts** for better typography and a variety of font options.
- **Lottie** for adding animations to enhance the user experience.

## Try It on Your Machine!

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/attack-on-titan-app.git
   ```

2. Navigate into the project directory:

   ```bash
   cd attack-on-titan-app
   ```

3. Install the required dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app on your emulator or connected device:

   ```bash
   flutter run
   ```

## API Integration

The app fetches data from Zach McMullen’s Attack on Titan API. The API provides the following endpoints:

- **Characters:** `/characters`
- **Episodes:** `/episodes`
- **Locations:** `/locations`
- **Organizations:** `/organizations`
- **Titans:** `/titans`

For more details on the available API endpoints and how to use them, refer to the [API documentation](https://github.com/ZachMcM/attack-on-titan-api).

## Contributing

Contributions are welcome! Feel free to fork the repository, submit pull requests, or open issues.

### Steps to Contribute:

1. Fork the repository.
2. Clone your fork locally.
3. Create a new branch for your feature or bug fix.
4. Make your changes and commit them.
5. Push your changes to your fork.
6. Submit a pull request.


## Acknowledgements

- **Zach McMullen** for providing the Attack on Titan API that powers this app.
- **Flutter** for being an amazing framework for building cross-platform mobile applications.


## Packages Used
  - **BLoC** for state management.
  - **Flutter Offline** for handling offline mode.
  - **Dio** for HTTP requests.
  - **Device Preview** for device previews.
  - **Google Fonts** for a wide selection of fonts.
