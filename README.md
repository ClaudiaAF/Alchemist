
<!--

***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email, project_title, project_description
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
![GitHub language count](https://img.shields.io/github/languages/count/ClaudiaAF/Alchemist?colorB=eb1367)
![GitHub repo size](https://img.shields.io/github/repo-size/ClaudiaAF/Alchemist?colorB=eb1367)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/ClaudiaAF/Alchemist?colorB=eb1367)
![GitHub watchers](https://img.shields.io/github/watchers/ClaudiaAF/Alchemist?colorB=eb1367)



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="https://user-images.githubusercontent.com/64257497/127384307-ea6806ef-c62f-438e-a22f-dd6368d6bc98.png" alt="Logo" width="180" height="180">    
  </a>

  <h3 align="center">Alchemist</h3>

  <p align="center">
    Your Go-To Skyrim Alchemy Library App.
    <br />
    <a href="https://github.com/github_username/repo_name"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/github_username/repo_name">View Demo</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Report Bug</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#features-and-functions">Features and Functions</a></li>
    <li>
      <a href="#concept-process">Concept Process</a>
      <ul>
        <li><a href="#ideation">Ideation</a></li>
        <li><a href="#planning">Ideation</a></li>
        <li><a href="#wireframes">Wireframes</a></li>
      </ul>
    </li>
    <li>
      <a href="#development-process">Development Process</a>
      <ul>
        <li><a href="#user-flow-diagram">User-Flow Diagrams</a></li>
        <li><a href="#implementation-of-features">Implementation</a></li>
        <li><a href="#design-architecture">Design Architecture</a></li>
        <li><a href="#unit-tests">Unit Tests</a></li>
      </ul>
    </li>
    <li><a href="#mockup">Mockup</a></li>
    <li><a href="#video-demonstration">Video Demonstration</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

![Group 59](https://user-images.githubusercontent.com/64257497/129109560-47898a8b-fec3-4501-be1f-7bec4a82705f.png)


The world of gaming as expanded over the years, so much so that games themselves have been widely recognised outside of just their own field, allowing for a more vast amount of options to further immerse the player in the game. Popular fantasy RPG video game The Elder Scrolls V: Skyrim grew largely with this notion, and influence has slowly started to spew over into the world of mobile apps.

Alchemy finds itself within this description. Alchemy is a Swift native Skyrim-inspired app, with its primary use to merely be a recipe book of Alchemy recipes for potions and posions that can be created within the game. When free-roaming and exploring within the game, the player can easily access recipes through Alchemy in order to brew potions or posions while on the go, without having to worry about getting overencumbered by carrying extra recipe books in-game! 


### Built With

* [Swift]()
* [SwiftUI]()
* [XCode]()



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Requires iOS 13 and Xcode 11

  
### Installation

1. In Xcode go to
  ```sh
  File -> Swift Packages -> Add Package Dependency
  ```
2. and paste in the repo's url:
`https://github.com/ClaudiaAF/Alchemist`



<!-- USAGE EXAMPLES -->
## Features and Functions

### Features

* Onboarding views to aid the user in understanding the app
<img width="1920" alt="Slide 16_9 - 22" src="https://user-images.githubusercontent.com/64257497/129711199-7c701e70-3edd-4bdf-ab74-0416b85a7b9c.png">

* List view of craftable alchemy recipes, and a seach option 
<img width="1920" alt="Slide 16_9 - 24" src="https://user-images.githubusercontent.com/64257497/129711287-69bb80da-89d2-4315-b0e1-a7c50252c6c2.png">

* Individual views for each recipe with image, description and needed ingredients
<img width="1920" alt="Slide 16_9 - 23" src="https://user-images.githubusercontent.com/64257497/129711352-c2eeff12-d1fc-47a9-ac8f-783a6dbf5a97.png">

* Settings Page with Light and Dark Mode option
<img width="1920" alt="Slide 16_9 - 25" src="https://user-images.githubusercontent.com/64257497/129711419-4605925c-83f8-4b4a-8e6a-24caf892ad1d.png">


### Functions 
* `TabView` utilised for the onboarding screens.
* `ScrollView` and `LazyVGrid` used for the list of potions.
* `@EnvironmentObject` used for individual page navigation.
* `@State` utilised throughout project for dark/light mode, and search bar.
* `preferredColorScheme` utilised in App.swift file for dark/light mode.

## Concept Process
### Ideation
![Group 57](https://user-images.githubusercontent.com/64257497/129109670-31407d35-a023-4170-8568-3c3d587c7bd9.png)
![Group 58](https://user-images.githubusercontent.com/64257497/129109693-6e37542d-5131-46f6-90f5-05d9e7e8ae11.png)

### Planning
![Group 63](https://user-images.githubusercontent.com/64257497/129109707-4ea88879-021b-4769-aea0-1273008a95d1.png)

### Wireframes
![Group 64](https://user-images.githubusercontent.com/64257497/129109781-49b55aa1-fffe-47c2-9c45-49047989af70.png)

## Development Process
### User-Flow Diagram
![Group 62](https://user-images.githubusercontent.com/64257497/129109797-50f9d5af-b168-4843-be7c-59a8e01a0bd8.png)

### Implementation of Features

#### Splash Page
The splash page was created using the SwiftUI `LaunchScreen` option in the `info.plst` file which automatically sets a splash page for you.

#### Onboarding
Through use of a `TabView` with the `PageTabViewStyle`, three onboarding screens were created with the data being parsed through dynamically with  local variables. Upon entering the app for the second time the onboarding will not show again.

#### List View
Using a basic scroll view the potions are displayed dynamically by accessing their data through the potions model.

#### Detailed View
An `@EnvironmentObject` is used to identify the selected potion in order to be able to access the potion data across the entire application in order to dynamically display it.

#### Search List
`@State` and a basic search function of identifying whether there is text in the textfield, and if so this text is comapred to the info in the potions model and found that way as well.

#### Light and Dark Mode
`@AppStorage` is made use of to determine whether dark or light mode is activated, with light mode being tagged as false and dark mode as true in my case.

#### Design Architecture
For my design architecture I made use of the Model View Controller architecture for my project as this was the architecture I was more familiar with at the time. The ideal method would definitely be to refactor the project to an MVVM structure, and I aim to do so.

#### Unit Tests
![Screenshot 2021-08-16 214326](https://user-images.githubusercontent.com/64257497/129713077-ba0cae9d-d07b-4c70-9b9b-c9fc8a38dc6d.png)

I conducted three successful basic UI Unit tests, the first testing the appearance of the settings page sheet, the second testing whether the search function works, and the third testing whether the detailed view displays the correct information.

## Mockup

<img width="1920" alt="Group 106" src="https://user-images.githubusercontent.com/64257497/129717253-a267fc92-6d53-404e-b241-99ddc192ef76.png">

## Video Demonstration
Click [Here](https://drive.google.com/file/d/1RR4ymoBMz5auRIVXpS5_CCIAOfxBDl7f/view?usp=sharing) to view the app demonstration

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/github_username/repo_name/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b ClaudiaAF/Alchemist`)
3. Commit your Changes (`git commit -m 'Add some Alchemist'`)
4. Push to the Branch (`git push origin ClaudiaAF/Alchemist`)
5. Open a Pull Request

## Author

Claudia Ferreira

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

* **Claudia Ferreira** - 180181@virtualwindow.co.za
* **Project Link** - https://github.com/ClaudiaAF/Alchemist.git

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Armand Pretorius](https://github.com/ArmandPretorius)
* [SwiftUI Documentation](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
* [Hacking With Swift](https://www.hackingwithswift.com/quick-start/swiftui)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
