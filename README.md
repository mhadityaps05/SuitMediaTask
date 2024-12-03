# SuitmediaTask (iOS)

This is a mobile application built using **Swift** and **UIKit** that checks whether a sentence is a palindrome. The app consists of 3 screens, performs API integration to fetch user data, and allows navigation between screens.

## Features

- **Palindrome Detection**: 
  - Checks if a given sentence is a palindrome, ignoring spaces, punctuation, and case.
  
- **API Integration**: 
  - Fetches user data from the [regres.in API](https://reqres.in/) and displays it dynamically in a list.
  
- **Navigation**: 
  - Smooth navigation between three screens.
  
- **Pull-to-Refresh & Infinite Scrolling**: 
  - Users can refresh the user list, and more users are loaded when scrolling to the bottom.

## Screens Overview

### 1. **First Screen**

   - **Input Fields**:
     - Text field for entering a name.
     - Text field for entering a sentence.
   - **Palindrome Check**:
     - A button titled "Check" to verify if the entered sentence is a palindrome.
     - Displays a dialog with either "isPalindrome" or "not palindrome" based on the result.
   - **Next Button**:
     - A button titled "Next" to navigate to the second screen.

### 2. **Second Screen**

   - **Static Welcome Text**: Displays a "Welcome" label.
   - **Dynamic Labels**:
     - Displays the entered name from the first screen.
     - Displays the dynamically updated "Selected User Name" label.
   - **Choose a User Button**:
     - Navigates to the third screen when clicked.

### 3. **Third Screen**

   - **User List**: Displays a list of users fetched from the API.
   - **Pull-to-Refresh**: Users can refresh the list by pulling down.
   - **Infinite Scrolling**: New users are loaded when scrolling to the bottom.
   - **User Selection**: Clicking on a user updates the "Selected User Name" label on the second screen.

## Screenshots

Add some screenshots here to illustrate the UI of the app on different screens.

## Requirements

- **Min iOS Version**: 15
- **Programming Language**: Swift
- **UI Framework**: UIKit
- **Development Environment**: Xcode (latest version recommended)

## Installation

### Clone the Repository
```bash
git clone https://github.com/yourusername/palindrome-app.git
cd palindrome-app
