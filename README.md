# Analyzing-Customer-Shopping-Behavior-using-MySQL

This project aims to perform data analysis using MySQL on a dataset. The dataset contains information about customer shopping data, including categories, payment methods, and sales details.

## Dataset Overview

The dataset consists of the following insights:

1. Total number of data points in the dataset: 99457
2. Total number of customers: 99457
3. Total number of unique categories: 8
4. List of unique categories: Clothing, Shoes, Books, Cosmetics, Food & Beverage, Toys, Technology, Souvenir
5. Payment methods: Credit Card, Debit Card, Cash

## Insights

Here are the insights obtained from the analysis:

1. Most selling product category: Clothing
2. Least selling category: Books
3. Shopping mall with high sales based on transaction count: Mall of Istanbul, Emaar Square Mall
4. Shopping mall with high sales based on sales amount: Mall of Istanbul with total sales amount of $2,138,070.00
5. Shopping mall with low sales based on sales amount: Cevahir AVM with sales of $551.31
6. Category with high sales based on sales amount: Clothing with total sales of $10,412,776.00
7. Category with low sales based on sales amount: Books with total sales of $14,922.75

## Top Customers

The top 5 customers based on sales amount are:

| Customer ID | Sales Amount |
|-------------|--------------|
| C947571     | $5,250.00    |
| C949801     | $5,250.00    |
| C956706     | $5,250.00    |
| C957665     | $5,250.00    |
| C959371     | $5,250.00    |

## Payment Methods

The most favorite mode of payment based on transaction count:

| Payment Method | Transaction Count |
|----------------|------------------|
| Cash           | 44,447           |
| Credit Card    | 34,931           |
| Debit Card     | 20,079           |

## Conclusion

This data analysis project provides valuable insights into customer shopping data. By analyzing categories, payment methods, and sales details, we can identify trends and make informed business decisions.

Get the files from
- sql/
    - customer_data_analysis.sql
- dataset/
    - customer_shopping_data.csv
- insights/
    - analysis_results.txt

Feel free to explore the provided SQL queries and adapt them to your own datasets. For more details, refer to the SQL files and the dataset file in the repository.

## License

This project is licensed under the [MIT License](LICENSE).

