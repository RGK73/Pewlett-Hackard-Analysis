# Pewlett-Hackard-Analysis
### Analysis of Employee Database of Pewlett Hackard with SQL

The main purpose of this analysis is to help Bobby to help his manager to get the number of employees retiring from each department of Pwelett-Hackard and find how many of them eligible for mentorship of the new employees so that there is no gap of human intellectual resources in the company.

### Tools used : postgreSQL. I have created ERD to create tables then used basic SQL queries to filter the data and table joins to reach the deliverables.

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/ERD.png)

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/Joins%20in%20postgreSQL.png)

## Results: 

### Retirement Titles Table = 133776 employees records

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.png)

- From the above table, very large amount of professional have reached retirement level and that will create a huge knowledge gap. In Pewlett-Hackard, total employees are 300024 and out of that 133776 titles are eligible for retirement. So now we have to find unique titles and that will give Bobby the idea about exactly how many employees are retirement eligible,

### Unique Titles Table = 72458 employees

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

- Out of total employees, 72458 are retirement eligible that is 24.14% of the total workforce will be retiring! It is huge number!

### Retiring Titles Table = 7 titles

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)

- From the 7 different titles, we can see that senior engineers and senior staff are the largest demographic to be retiring soon.

### Mentorship Eligibility Table = 1549 employees

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibilty.png)

- Hence to keep the company flourishing , Bobby needs to give his manager all the data for training and mentorship of the new recruits and smooth transition for their different roles in the company. So, now we have 7 different titles for the employees from 9 different departments to check how it is going to affect the company. We do further analysis of unique titles, all the departmens and salaries to find out further impact of this "Silver Tsunami".

Summary: 
How many roles will need to be filled as the "silver tsunami" begins to make an impact?

- From the analysis we can see that 72458 positions need to be filled as  the "silver tsunami" begins to make an impact.

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

- No.From the analysis we found that there are 1549 employees eligible for training and mentorship program which not at all enough for the silver tsunami of the retirees. It's for every 47 new employees, just 1 mentor! It is clearly inadequate.
To fugure out more about the "Silver Tsunami" , in depth analysis has to done. So we created unique table. As shown below:

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/Unique_Table.png)

After going through the table , we further sorted out how many employees are retiring from each department and what are the titles of those employees. This gave us the general idea of where new human resources are required the most.

![alt_text](https://github.com/RGK73/Pewlett-Hackard-Analysis/blob/main/Images/per_dept_titles.png)

From this table, we found out that the highest number of employees are 'Senior Engineers' from 'Developement'(11644), 'Senior Engineers' from 'Production' (10189), and 'Senior Staff' from 'Sales'(8685)! 
It will help Booby to have all this information ready for his manager.

