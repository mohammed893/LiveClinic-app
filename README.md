#Live Clinic

The UI workflow is organized within the presentation directory.

Patient and Doctor Directories
Each contains:

A main screen with an AppBar and a bottom navigation bar.
Patient screens, each placed in a separate folder. Each screen is a widget that is passed inside the body of the main screen.
Note:
The chatbot has its own Scaffold.
The application navigates to it using the main bottom navigation bar (BNVB), but it is not passed into the body.
It functions as a separate screen, and navigating backward returns the user to the home screen at index 0.
Payment Screens
The payment screens are implemented as bottom sheets inside the Explore screen.