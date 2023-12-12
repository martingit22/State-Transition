
# Task Description
## 5. State Transition
This is an exercise from the ISTQB textbook "Fundamentals of Software Testing ISTQB Certification."

Scenario: A website shopping basket starts out as empty. As purchases are selected, they are added to the shopping basket. Items can also be removed from the shopping basket. When the customer decides to check out, a summary of the items and the total cost is shown to him to say whether it is OK. If the contents and price are OK, the customer leaves the summary display and goes to the payment system. Otherwise, they go back to shopping (so you can remove items if you want).

## a. Produce a state diagram showing the different states and transitions. Define a test in terms of the sequence of states to cover all transitions.
![Screenshot 2023-12-12 141106](https://github.com/martingit22/State-Transition/assets/148612731/93527307-1ce3-45d7-b49c-36a68c01f03d)
## b. Produce a state table. Give an example test for an invalid transition.
I have made a new repository for all my repositories and including a link here - StateTableTask5.sql
# Test in terms of the sequence of states to cover all transitions:

1. Start in the "Empty Basket" state.
2. Add an item to the basket. Transition to the "Item Added to Basket" state.
3. Remove the item from the basket. Transition back to the "Empty Basket" state.
4. Add another item to the basket. Transition to the "Item Added to Basket" state.
5. Go to the summary display. Transition to the "Summary Display" state.
6. Confirm the contents and price are okay. Transition to the "Confirm and Go to Payment System" state.
7. Perform an invalid transition (e.g., trying to remove an item from an empty basket). Should stay in the current state (no transition).
8. Go back to shopping. Transition to the "Back to Shopping" state.
9. Repeat steps 4-7 to cover additional transitions.

##Example Test for an Invalid Transition:
Starting from the "Empty Basket" state, attempt to remove an item from the basket. The expected behavior is to stay in the "Empty Basket" state and not transition to any other state.
