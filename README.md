# Pewlett Hackard Retirement Analysis
Analysis of company employee retirement eligibility

## Purpose
Pewlett Hackard is facing a "silver tsunami". As an established company, thousands of its employees are approaching retirement. That means there be thousands of vacancies, but that is not all. The departing workers not only leave empty positions, they also take years of experience and wisdom with them. We will need to do more than just hire new people. We will need to train them. Because of my familiarity with SQL, I was tasked with helping the company prepare by identifying how many vacancies it would have to fill in which roles as well as how many current employees could act as mentors to new hires. With the help of data, we can get ahead of the silver tsunami and surf it to the golden shore of the future.

## Results
Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The chart below shows the number of vacancies by title the silver tsunami will create. Below the chart are conclusions that can be drawn from it.

![retirements by title](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-25%20at%205.25.59%20PM.png?raw=true)

* There will be a mass exodus of engineers and staff -- particularly senior. 
  + Engineers will be particularly hard to replace because they require more specialized education and training.

* Relatively few assistant engineers will be leaving.
  + These will probably be easier to replace

--find out how many assistant engineers total, how many can be promoted

The next figure shows how many employees are eligible to become mentors.

[number of mentors](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-25%20at%207.05.56%20PM.png?raw=true)

* There are only 1,549 potential mentors.
   + This is vastly smaller than the number of employees entering retirement

When the potential mentors are separated by title, the picture becomes even bleaker.

[number of mentors by title](![image](https://user-images.githubusercontent.com/87392984/138949431-f0cd7dd3-dc99-4002-bdce-7eb43167d269.png)

There are only 700 engineers who can serve as mentors to those who would replace the 40,000 plus engineers who are retiring. That means each mentor would have over 50 mentees which is simply not possible.


## Summary

The tables above paint a bleak picture. The query `select count(emp_no) from unique_titles` reveals that approximately 90,400 employees will be retiring, over 40,00 of those are engineers. They will require highly educated and trained employees to replace them. 

with a few adjustments, 

Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

new figures
expand mentorship to born in 75
number of assistant engineers



Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
