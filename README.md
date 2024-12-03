# Palindrome App

This is a mobile application that demonstrates a simple user interface with multiple screens, built to check if a sentence is a palindrome. It includes API integration to fetch user data and allows navigation between multiple screens with dynamic content.

## Screens Overview

### 1. **First Screen**
   - **Input Fields:**
     - A text field to input a name.
     - A text field to input a sentence.
   - **Palindrome Check Button:**
     - A button titled "Check" which verifies if the input sentence is a palindrome.
     - Displays a dialog with either "isPalindrome" or "not palindrome" based on the result.
   - **Next Button:**
     - A button titled "Next" to navigate to the second screen.

### 2. **Second Screen**
   - Displays a static "Welcome" text.
   - Shows the input name and the sentence input from the first screen.
   - Displays a dynamic "Selected User Name" label which updates upon selecting a user.
   - **Choose a User Button:**
     - Navigates to the third screen when clicked.

### 3. **Third Screen**
   - Displays a list of users fetched from the API (`regres.in`).
   - Includes user details like email, first name, last name, and avatar.
   - Supports pull-to-refresh functionality.
   - Automatically loads the next page of data when scrolling to the bottom.
   - If no data is available, an empty state message is shown.
   - When a user is clicked from the list, the "Selected User Name" on the second screen is updated accordingly.

## Features

- **Palindrome Detection:**
  - The app checks if a given sentence is a palindrome, ignoring spaces, punctuation, and case.
  
- **API Integration:**
  - Fetches user data from the [regres.in API](https://reqres.in/).
  - Displays user details dynamically in a list.
  
- **Navigation:**
  - Provides smooth navigation between multiple screens.
  
- **Pull-to-Refresh & Infinite Scrolling:**
  - Users can pull to refresh the list, and new pages of users are fetched as you scroll to the bottom.

## Requirements

- Android (or iOS, depending on platform choice)
- Internet connection for fetching user data
- Access to `regres.in` API

## Setup and Installation

### Clone the Repository
```bash
git clone https://github.com/yourusername/palindrome-app.git
cd palindrome-app
