select*from [CSV revenue analysis data set];

alter table [CSV revenue analysis data set]
drop column revenue;

alter table [CSV revenue analysis data set]
drop column profit;

alter table [CSV revenue analysis data set]
add revenue int;

UPDATE [CSV revenue analysis data set]
SET revenue = ISNULL(revenue, units_sold*unit_price)
WHERE revenue IS NULL;

select*from [CSV revenue analysis data set];

alter table [CSV revenue analysis data set]
add profit int;

UPDATE [CSV revenue analysis data set]
SET profit = ISNULL(profit, units_sold*unit_price-units_sold*cogs)
WHERE profit IS NULL;

select*from [CSV revenue analysis data set];