Current
======
**App Description:** Current is a proximity based social media application.  Its focus is on connecting users with events called _Hooks_.  Hooks are created by users, and can be anything from meeting up to workout, or going out for nightlife.  Users find Hooks by sending out a _Ripple_, which can narrowed down to just finding Hooks, Users, or Both.  Rippling shows you search results based on a close proximity of events related to your interest.


#### By: _Calvin Taylor, Dominic Pilla, Josh Ehrich, Murphy Ward, and Will Johnke_


## Video
* [Presentation and Promo Video](https://youtu.be/pUEXCT5xaW0)


## Access
* [Axosoft site](https://current.axosoft.com)
* [GitHub URL](https://github.com/djpkvf/Current.git)


---
## Sprint 1 - Planning
* Use cases
   * Josh created the use case diagram
* Requirement document
   * Murphy already had some basic requirements
   * Fleshed them out and expounded upon them
* Prototype
   * Roughly sketched the Views for Current
   * Dominic began prototyping the app on Adobe XD
   * [Adobe XD Prototype](https://github.com/djpkvf/Current/blob/features/Current-Prototype.xd)
* Prototypes of Views we intend on creating:


### Ripple Results


![Ripple Results](https://github.com/djpkvf/Current/blob/features/images/iPhone%206-7-8%20%E2%80%93%203.png "Ripple Results")


### Creating a Hook


![Creating Hook](https://github.com/djpkvf/Current/blob/features/images/iPhone%206-7-8%20%E2%80%93%208.png "Creating a Hook")


* Learning/Brainstorming
   * Calvin brainstormed logos for the app
   * Josh looked up how to use Firebase within iOS
   * Will researched general storage in Firebase, and the structure of the users, hooks, and certain features throughout the app 
---
## Sprint 2 - Research
* Firebase
   * Researched the benefits and efficacy of Firebase as the basis for a beginning app
   * https://docs.google.com/document/d/19lWQEHXeh0Mv8HAfQAIboSz4lb7_8M-ViDu0vzwXLGQ/edit
   * https://firebase.google.com/docs/database/ios/structure-data
* Geofire
   * After realizing the weaknesses of Firebase’s geolocation querying, implement Geofire
   * https://github.com/firebase/geofire


---
## Sprint 3 - Development
* Dominic begins development on Sign-In and Registration views
   * Worked on creating the sign-in and registration views
   * Decided to go with a Segmented Control to switch between the two
   * Embedded TextFields, Buttons, and Images on a ScrollView, and implemented an auto-scroll up ability for the Keyboard.  Somewhat cleaner than using a UITableView.
* You can see here the desired Sign-In View


![alt text](https://github.com/djpkvf/Current/blob/features/images/iPhone%206-7-8%20%E2%80%93%201.png "Sign-In Screen")


* Murphy begins development on Ripple sequence
* Will begins development on Firebase geolocation implementation using Geofire
* Calvin created/found UI icons and graphics
* Josh developed authentication for the app using Firebase/Auth CocoaPod




---
## Sprint 4 - Finalizing Development & Video Planning and Production
* Calvin planned, shot, and finalized the promo video and presentation video
* Will planned the final presentation and assisted shooting the final video
* Dominic restarted the GitHub repository due to unresolvable merge conflicts, created the app prototype, and implemented the profile view
* Josh organized the final report and developed the module view for the filters
* Murphy implemented the hooks viewer and addition functions
---
## Future
* Implement further Geofire functionality
* Add missing fields in the hook section
* Minimize references by including some in App Delegate
   *  `let reference = Firebase.Database.database().reference(fromURL: "https://current-79dd0.firebaseio.com/")`
   *  `let hookReference = reference.child("hooks").childByAutoId()`
   * etc.    
* Finesse the hook interface and the ripple
* Add rippling effect when you click the symbol
* Allow ripple on the main screen
* Add messaging inside of a hook
* Delete Hooks
* Remove yourself from hooks




![Current](https://github.com/djpkvf/Current/blob/features/images/cArrowsLight.png "Logo")
