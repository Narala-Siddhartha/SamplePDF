# Shopping Website Test Cases

Below are the test cases generated from the provided functional requirements:

| Test Case ID | Test Case Title | Preconditions | Test Data | Test Steps | Expected Result | Actual Result | Status |
|--------------|-----------------|---------------|-----------|------------|----------------|---------------|--------|
| TC001        | Register New User | None | Name: John Doe, Email: john@example.com, Password: Password123 | 1. Navigate to registration page 2. Enter name, email, and password 3. Submit form | User is registered successfully and redirected to the welcome page | | |
| TC002        | Register New User with Existing Email | User with email john@example.com already exists | Name: Jane Doe, Email: john@example.com, Password: Password123 | 1. Navigate to registration page 2. Enter name, email, and password 3. Submit form | Error message indicating email is already in use | | |
| TC003        | Authenticate Returning User | User account exists | Email: john@example.com, Password: Password123 | 1. Navigate to login page 2. Enter email and password 3. Submit form | User is authenticated and redirected to the dashboard | | |
| TC004        | Authenticate with Incorrect Password | User account exists | Email: john@example.com, Password: WrongPassword | 1. Navigate to login page 2. Enter email and incorrect password 3. Submit form | Error message indicating incorrect password | | |
| TC005        | Update User Profile | User is logged in | New Name: John Smith, New Password: NewPassword123 | 1. Navigate to profile page 2. Update name and password 3. Submit changes | Profile is updated successfully | | |
| TC006        | Add New Product by Admin | Admin is logged in | Product Name: Widget, Description: Useful widget, Price: 19.99, Stock: 100 | 1. Navigate to admin product management 2. Enter product details 3. Submit form | Product is added successfully and visible in product list | | |
| TC007        | Update Product Details by Admin | Admin is logged in, Product exists | Updated Price: 24.99 | 1. Navigate to admin product management 2. Select product 3. Update price 4. Submit changes | Product details are updated successfully | | |
| TC008        | Delete Product by Admin | Admin is logged in, Product exists | Product ID: 123 | 1. Navigate to admin product management 2. Select product 3. Delete product | Product is removed from the product list | | |
| TC009        | Display Products to Users | Products exist in the system | None | 1. Navigate to product listing page | Products are displayed with details | | |
| TC010        | Search Products by Name | Products exist in the system | Search Term: Widget | 1. Navigate to product search 2. Enter search term 3. Submit search | Relevant products are displayed | | |
| TC011        | Add Product to Shopping Cart | User is logged in, Product exists | Product ID: 123 | 1. Navigate to product page 2. Add product to cart | Product is added to shopping cart | | |
| TC012        | View Shopping Cart Contents | User is logged in, Cart is not empty | None | 1. Navigate to shopping cart page | Shopping cart contents are displayed | | |
| TC013        | Update Product Quantity in Cart | User is logged in, Product is in cart | Product ID: 123, New Quantity: 2 | 1. Navigate to shopping cart page 2. Update product quantity 3. Submit changes | Product quantity is updated in cart | | |
| TC014        | Remove Product from Shopping Cart | User is logged in, Product is in cart | Product ID: 123 | 1. Navigate to shopping cart page 2. Remove product from cart | Product is removed from shopping cart | | |
| TC015        | Proceed to Checkout | User is logged in, Cart is not empty | None | 1. Navigate to shopping cart page 2. Click on checkout | User is redirected to checkout page | | |
| TC016        | Enter Shipping Information | User is on checkout page | Shipping Address: 123 Main St, City: Anytown | 1. Enter shipping information 2. Submit form | Shipping information is saved and user proceeds to payment | | |
| TC017        | Calculate Total Cost | User is on checkout page, Cart is not empty | Cart Items: 2, Tax: 10%, Shipping Fee: 5.00 | 1. Review order summary | Total cost is calculated correctly | | |
| TC018        | Provide Multiple Payment Options | User is on payment page | Payment Options: Credit Card, PayPal | 1. Review payment options | Multiple payment options are available | | |
| TC019        | Process Payment Securely | User is on payment page, Valid payment details | Payment Method: Credit Card | 1. Enter payment details 2. Submit payment | Payment is processed securely and confirmation is displayed | | |
| TC020        | Generate Unique Order ID | User completes checkout | None | 1. Complete checkout process | Unique order ID is generated for the transaction | | |
| TC021        | Send Order Confirmation Email | User completes checkout | User Email: john@example.com | 1. Complete checkout process | Order confirmation email is sent to user | | |
| TC022        | View Order History | User is logged in | None | 1. Navigate to order history page | User's past orders are displayed | | |
| TC023        | Update Order Status by Admin | Admin is logged in, Order exists | Order ID: 456, New Status: Shipped | 1. Navigate to admin order management 2. Update order status | Order status is updated successfully | | |
| TC024        | Notify User of Order Status Update | Order status is updated | User Email: john@example.com | 1. Update order status | User receives email notification of status update | | |
| TC025        | Leave Review and Rating | User has purchased product | Product ID: 123, Review: Great product!, Rating: 5 | 1. Navigate to product page 2. Leave review and rating | Review and rating are submitted successfully | | |
| TC026        | Display Reviews and Ratings | Product has reviews | Product ID: 123 | 1. Navigate to product page | Reviews and ratings are displayed | | |
| TC027        | Moderate Reviews by Admin | Admin is logged in, Review exists | Review ID: 789 | 1. Navigate to admin review management 2. Moderate review | Review is moderated successfully | | |
| TC028        | Enforce Strong Password Policy | User registers or updates password | Password: weakpass | 1. Enter weak password 2. Submit form | Error message indicating password does not meet policy | | |
| TC029        | Encrypt Sensitive User Data | User data is stored | None | 1. Review database storage | Sensitive data is encrypted | | |
| TC030        | Comply with Data Protection Regulations | System is operational | None | 1. Review system compliance | System complies with relevant regulations | | |

Note: The "Actual Result" and "Status" columns are to be filled in during the execution of the test cases.