
Task Description
5. State Transition
This is an exercise from the ISTQB textbook "Fundamentals of Software Testing ISTQB Certification."

Scenario: A website shopping basket starts out as empty. As purchases are selected, they are added to the shopping basket. Items can also be removed from the shopping basket. When the customer decides to check out, a summary of the items and the total cost is shown to him to say whether it is OK. If the contents and price are OK, the customer leaves the summary display and goes to the payment system. Otherwise, they go back to shopping (so you can remove items if you want).

a. Produce a state diagram showing the different states and transitions. Define a test in terms of the sequence of states to cover all transitions.

b. Produce a state table. Give an example test for an invalid transition.

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
