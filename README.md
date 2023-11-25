<<<<<<< HEAD
# Test Cases

## 1. Adding and Removing Items

**Test Case 1.1: Adding Multiple Items**

**Preconditions:**
1. The shopping basket is empty.

**Steps to Reproduce:**
1. Add Item A to the basket.
2. Add Item B to the basket.

**Expected Result:**
1. The items A and B should be added to the basket.
2. The total cost should be updated accordingly.

**Priority:** Medium

---

**Test Case 1.2: Removing Items from the Basket**

**Preconditions:**
1. The shopping basket contains items A and B.

**Steps to Reproduce:**
1. Remove Item A from the basket.

**Expected Result:**
1. Item A should be removed from the basket.
2. The total cost should be updated accordingly.

**Priority:** Medium

---

## 2. Checkout Summary Validation

**Test Case 2.1: Proceed to Payment after Valid Checkout**

**Preconditions:**
1. The shopping basket contains items A and B.

**Steps to Reproduce:**
1. Proceed to checkout.
2. Confirm the checkout summary as OK.

**Expected Result:**
1. The customer should proceed to the payment system.

**Priority:** High

---

**Test Case 2.2: Go Back to Shopping after Invalid Checkout**

**Preconditions:**
1. The shopping basket contains items A and B.

**Steps to Reproduce:**
1. Proceed to checkout.
2. Find an issue in the checkout summary and choose Not OK.

**Expected Result:**
1. The customer should go back to the shopping state.
2. Items can be adjusted or removed as needed.

**Priority:** High

---

## 3. Payment Process

**Test Case 3.1: Successful Payment Process**

**Preconditions:**
1. The shopping basket contains items A and B.
2. The checkout summary is validated as OK.

**Steps to Reproduce:**
1. Proceed to payment.
2. Complete the payment process.

**Expected Result:**
1. The payment should be successful.
2. The system should terminate.

**Priority:** High

---

**Test Case 3.2: Failed Payment Process**

**Preconditions:**
1. The shopping basket contains items A and B.
2. The checkout summary is validated as OK.

**Steps to Reproduce:**
1. Proceed to payment.
2. Encounter an issue during the payment process.

**Expected Result:**
1. The payment should fail.
2. The system should handle the failure gracefully.

**Priority:** Medium

---

## 4. Edge Cases

**Test Case 4.1: Non-Empty Basket Before Shopping**

**Preconditions:**
1. The shopping basket already contains items C and D.

**Steps to Reproduce:**
1. Start the shopping process.

**Expected Result:**
1. The system should handle the non-empty basket appropriately during shopping.

**Priority:** Low

---

**Test Case 4.2: Attempt to Checkout Without Adding Items**

**Preconditions:**
1. The shopping basket is empty.

**Steps to Reproduce:**
1. Attempt to proceed to checkout without adding any items.

**Expected Result:**
1. The system should prevent checkout and provide appropriate feedback.

**Priority:** Medium
=======
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
>>>>>>> 44f4c97a77a04683453068546e2346a6acbd50c7
