# __Task 4__

Task [description here](https://github.com/EPAM-JS-Competency-center/cloud-development-course-initial/blob/main/task4-integration-with-database/task.md)

Task due date / deadline date - ????????? / 13.09.21 23:59(GMT+3)

Self check:
 
 TOTAL POINTS - _** 3 points**_
 
-----------
## __Evalution Criteria__

- [x] 1 - TASK 4.1 is implemented => Link to [SQL script with exemple data]
- [x] 3 - TASK 4.2 is implemented lambda links are provided and returns data
- [ ] 4 - TASK 4.3 is implemented lambda links are provided and products is stored in DB (call TASK 4.2 to see the product)
- [ ] 5 - Your own Frontend application is integrated with product service (/products API) and products from product-service are represented on Frontend. Link to a working Front-End application is provided for cross-check reviewer.

## __Additional options__

- [ ] POST/products lambda functions returns error 400 status code if product data is invalid
- [ ] All lambdas return error 500 status code on any error (DB connection, any unhandled error in code)
- [ ] All lambdas do console.log for each incoming requests and their arguments
- [ ] Transaction based creation of product (in case stock creation is failed then related to this stock product is not created and not ready to be used by the end user and vice versa)
------------
# __FrontEnd__

* FrontEnd integrated with product service HTTP API & images from S3 Bucket: 
* FrontEnd Task-4 Pull Request : - 

# __BackEnd__

Task | Description | Method | URL 
-------|-------------|--------|-----


Task 4.1 | SQL script with exemple data | GET | [SQL script with exemple data]
Task 4.2 | getProductsList get ALL products from DB | GET | 
Task 4.2 | getProductsById get ONE product from DB by id | GET | 
Task 4.2 | getProductsById Product in DB not found | GET | 
Task 4.3 | getProductsById POST to add product to DB | GET | 
------------

# __Swagger documentation__
