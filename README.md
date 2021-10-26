# Pewlett Hackard Retirement Analysis
Analysis of company readiness for mass retirement

## Purpose
Pewlett Hackard is facing a "silver tsunami". As an established company, thousands of its employees are approaching retirement. That means there will be thousands of vacancies, but that is not all. The departing workers not only leave empty positions, they also take years of experience and wisdom with them. We will need to do more than just hire new people. We will need to train them. Because of my familiarity with SQL, I was tasked with helping the company prepare by identifying how many vacancies it would have to fill in which roles as well as how many current employees could act as mentors to new hires. With the help of data, we can get ahead of the silver tsunami and surf it to the golden shore of the future.

## Results
The chart below shows the number of vacancies by title the silver tsunami will create. Below the chart are conclusions that can be drawn from it.

![retirements by title](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-25%20at%205.25.59%20PM.png?raw=true)

* There will be a mass exodus of engineers and staff -- particularly senior engineers and staff. 
  + Engineers will be particularly hard to replace because they require more specialized education and training.

* Relatively few assistant engineers will be leaving.
  + These will probably be easier to replace. They will require less training.

The next figure shows how many employees are eligible to become mentors.

![number of mentors](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-25%20at%207.05.56%20PM.png?raw=true)

* There are only 1,549 potential mentors.
   + This is vastly smaller than the number of employees entering retirement

When the potential mentors are separated by title, the picture becomes even bleaker.

![number of mentors by title](https://user-images.githubusercontent.com/87392984/138949431-f0cd7dd3-dc99-4002-bdce-7eb43167d269.png)

There are only 700 engineers who can serve as mentors to those who would replace the 40,000 plus engineers who are retiring. That means each mentor would have over 50 mentees which is simply not possible.


## Summary

The tables above paint a daunting picture. The query `select count(emp_no) from unique_titles` reveals that approximately 90,400 employees will be retiring, over 40,00 of which are engineers. They will require highly educated and trained employees to replace them. To make matters worse, from the criteria I was given, there are only 1,549 mentors and only 700 them can mentor the engineers. However, all is not lost. We may be able to hire new engineers from within the company. As the figure below shows, there are over 100,000 engineers in the company. We may be able to promote many of them to senior engineers. Moreover, there are over 15,000 assistant engineers and over 12,000 of them are not close to retirement. Many of them could be promoted to engineers while new hires could become assistant engineers who would be easier to train.

![employees by unique title](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-26%20at%203.09.20%20PM.png?raw=true)

Finally, we may be needlessly limiting ourselves by restricting eligibility to mentor to employees born in 1965. If we expand the eligibility window to five years (1960-65), the results look more promising. As you can see from the chart below, expanding the mentorship eligibility window to five years provides the company with enough experienced engineers and staff to mentor the new hires.

![expanded mentorship eligibility](https://github.com/LiShanDa2021/Pewlett-Hackard-Analysis/blob/main/data/Screen%20Shot%202021-10-26%20at%203.20.33%20PM.png?raw=true)

In sum, by promoting employees and expanding eligibility to mentor, Pewlett Hackard can weather the silver tsunami while maintaining a vast, well-trained workforce.
