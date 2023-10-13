# Calculator-App
# Calculator App with SwiftUI and MVC Architecture

This README provides an overview of the Calculator app, its features, and how it was developed using SwiftUI and the Model-View-Controller (MVC) architecture.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [MVC Architecture](#mvc-architecture)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Calculator app is a simple yet powerful tool that allows users to perform basic arithmetic operations. It was developed using the SwiftUI framework and follows the MVC architecture to ensure clean separation of concerns and maintainability.
![Simulator Screenshot - iPhone 15 Pro Max - 2023-10-13 at 17 56 59](https://github.com/ManikantaSirumalla/Calculator-App/assets/87671172/bbeeef4f-9a46-40e2-a7ba-109e10f89ab1)


## Features

- Addition, subtraction, multiplication, and division operations.
- Clear button to reset the calculator.
- Live display of the input and results.
- Error handling for divide-by-zero cases.

## Getting Started

To run and explore the Calculator app on your local machine, follow these steps:

1. **Prerequisites:**
   - Ensure you have Xcode installed on your Mac.
   - This project is written in Swift and SwiftUI, so make sure you are familiar with these technologies.

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/ManikantaSirumalla/calculator-app.git
   cd calculator-app
   ```

3. **Open in Xcode:**
   - Open the project in Xcode by double-clicking the `.xcodeproj` file.

4. **Run the App:**
   - Select a simulator (e.g., iPhone 12) as the target.
   - Click the "Run" button in Xcode to build and run the app on the selected simulator.

5. **Explore the Code:**
   - Study the code to understand how SwiftUI and MVC architecture are implemented in this project.

## MVC Architecture

The Calculator app follows the Model-View-Controller (MVC) design pattern:

- **Model (Model.swift):**
  - Contains the business logic and data representation.
  - Manages the calculations and states of the calculator.

- **View (ContentView.swift):**
  - Presents the user interface and interacts with the user.
  - Displays input fields and results.
  - Sends user actions to the Controller for processing.

- **Controller (CalculatorController.swift):**
  - Acts as an intermediary between the Model and the View.
  - Processes user input and updates the Model and View accordingly.
  - Enforces the separation of concerns and maintains the app's logic.

## Contributing

Contributions to the Calculator app are welcome! If you'd like to enhance the app or fix any issues, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and ensure that the code is well-documented and follows best practices.
4. Test your changes thoroughly.
5. Create a pull request to the main repository, explaining the changes and improvements.

## License

This Calculator app is open-source and is available under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as per the terms of the license. Please see the [LICENSE](LICENSE) file for more details.

Thank you for your interest in the Calculator app! If you have any questions, issues, or feedback, please don't hesitate to reach out to us.
