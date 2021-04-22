#  Sample showing potential bug for modal presentations when presenting defines a context

### Steps to reproduce:

Happy Path 1:
  1. Tap "Push" to show the presenting view controller
  2. Tap "Back"
  Result: 
    PresentingVC is properly deallocated
      -> "Deiniting PresentingVC" is logged in the console

Happy Path 2:
  1. Tap "Push" to show the presenting view controller
  2. Tap "Present" to present the modal view controller (ModalVC)
  3. Tap "Dismiss" to remove the modal view controller
  4. Tap "Back"
  Result: 
    ModalVC & PresentingVC are properly deallocated
      -> "Deiniting ModalVC" is logged in the console
      -> "Deiniting PresentingVC" is logged in the console

Unhappy Path:
  1. Tap "Push" to show the presenting view controller
  2. Tap "Present" to present the modal view controller (ModalVC)
  3. Tap "Back"
  Result: 
    ModalVC & PresentingVC are not deallocated
      -> No console log

