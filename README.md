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

<img width="395" alt="Screenshot 2024-12-04 at 2 05 10 AM" src="https://github.com/user-attachments/assets/fa998432-fff3-4487-a086-1bf693e8d3a1">
<img width="395" alt="Screenshot 2024-12-04 at 2 05 47 AM" src="https://github.com/user-attachments/assets/293d9109-8b7a-454b-8d8f-eff959b07ba2">
<img width="397" alt="Screenshot 2024-12-04 at 2 05 56 AM" src="https://github.com/user-attachments/assets/fe88dd50-555d-48e6-ab12-f4c0c062541c">
<img width="406" alt="Screenshot 2024-12-04 at 2 06 10 AM" src="https://github.com/user-attachments/assets/94b0c195-bda6-4301-aa51-c7f6714a4ba1">
<img width="399" alt="Screenshot 2024-12-04 at 2 06 27 AM" src="https://github.com/user-attachments/assets/80204874-44e9-4fdd-baab-3a71c333f525">
<img width="399" alt="Screenshot 2024-12-04 at 2 06 49 AM" src="https://github.com/user-attachments/assets/5c314906-4cd1-4347-ba0b-39ea6dcec6e1">


## Requirements

- **Min iOS Version**: 15
- **Programming Language**: Swift
- **UI Framework**: UIKit
- **Development Environment**: Xcode (latest version recommended)

## Installation

### Clone the Repository
```bash
git clone https://github.com/mhadityaps05/SuitMediaTask
cd SuitMediaTask
