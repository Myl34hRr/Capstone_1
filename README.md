# Capstone_1
Myleah Richardson 

# Region 
south- Andy Gisselquist, and texas 

# Manager
Jeff "howdy" Richards

**Questions i am answering**
*What is total revenue overall for sales in the assigned territory, plus the start date and end date
that tell you what period the data covers?
∗ What is the month by month revenue breakdown for the sales territory?
∗ Provide a comparison of total revenue for the specific sales territory and the region it belongs to.
∗ What is the number of transactions per month and average transaction size by product category
for the sales territory?
∗ Can you provide a ranking of in-store sales performance by each store in the sales territory, or a
ranking of online sales performance by state within an online sales territory?
∗ What is your recommendation for where to focus sales attention in the next quarter?

## Entities (Tables)
- inventory categories
- inventory subcategories
- management 
- online sales
- products
- shipper list
- store locations 
- store sales


## Attributes by Entity


## inventory categories
- categoryid (primary)
- category
- description

## iventory subcategories
- subcategoriesid(primary)
- categoryid(foregion key)
- subcategory

## management 
- id (primary)
- region
- regional directory 
- state(foreigon key)
- sales manager

## online sales
- id(foreigon key)
- date
- prodNum 
- sales total
- ship to state

## products
- prodNum(foreigon key)
- proudct
- categoryid(foreigon key)
- subcategoryid (foreigon key)


## shipper list 
- id (foregion key)
- ship to state 
- preferred shipper
- preferred shipper
- vloume discount

## store locations 
- store locations(primary)
- state(foregin key)
- storeid (foregion key)

## store sales
- id (foregion key)
- transaction date
- store id (foregion key)
- prod num (foregion key)
- sale amount 
