Test Cases:
Test Case 1: Add Item to Empty Basket
Precondition: Empty basket.
Steps to Reproduce:
Add an item.
Expected Result: State transitions to "Items Added."
Priority: High
Test Case 2: Checkout from Empty Basket
Precondition: Empty basket.
Steps to Reproduce:
Click on "OK" for checkout.
Expected Result: State transitions to "Payment System."
Priority: Medium
Test Case 3: Add Item to Non-Empty Basket
Precondition: Basket with items.
Steps to Reproduce:
Add an additional item.
Expected Result: State remains in "Items Added."
Priority: Medium
Test Case 4: Remove Item from Basket
Precondition: Basket with items.
Steps to Reproduce:
Remove an item.
Expected Result: State transitions to "Empty Basket."
Priority: High
Test Case 5: Checkout from Items Added
Precondition: Basket with items.
Steps to Reproduce:
Click on "OK" for checkout.
Expected Result: State transitions to "Payment System."
Priority: Medium
Test Case 6: Return to Shop from Payment System
Precondition: After successful payment.
Steps to Reproduce:
Click on "Return to Shop."
Expected Result: State transitions to "Empty Basket."
Priority: Low
Test Case 7: Cancel Checkout from OK Summary
Precondition: After displaying OK summary.
Steps to Reproduce:
Click on "Not OK."
Expected Result: State transitions to "Items Added."
Priority: High
