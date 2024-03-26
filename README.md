# FirstSessionFlow-SwiftUI

Content: LoginScreen, SignupScreen, Navigation, MVVM, Supabase 

## FolderScreen (MVVM)
- **Data**
  - `di`: Contains the dependency injection configuration.
  - `mapper`: Contains mappers to transform data between layers.
  - `network`: Contains classes or functions to interact with the network layer.

- **Domain**
  - `Model`: Contains the data models used in the domain layer.
  - `network`: Contains the repository interfaces and use cases related to the network.
  - `use_case`: Contains the application use cases.

- **UI**
  - `ScreenNameState`: Defines the state of the screen.
  - `ScreenName`: Contains the screen logic (view controllers).
  - `ScreenNameViewModel`: Contains the view models that handle the presentation logic and interaction with use cases.
