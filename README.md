<a id="top"></a> 

<p align="center" style="margin: 0;">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&size=35&duration=1&pause=1&color=FF9900&repeat=false&center=true&vCenter=true&width=800&height=70&lines=SteamDB" alt="Typing SVG" />
  <br>
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&size=20&duration=1&pause=1&color=FF9900&repeat=false&center=true&vCenter=true&width=800&height=70&lines=SQL+Project+-+Cesae+Digital" alt="Typing SVG" />
</p>

<h2 align="left"></h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=1+-+Contextualization" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  This project was developed as part of the Data Analyst course at CESAE Digital, with the goal of consolidating SQL knowledge through the creation of a relational database and the execution of various structured operations and queries.<br><br>
  Each student had the autonomy to choose the theme of the database to be developed, and this project focuses on building a database inspired by the SteamDB platform.<br><br>
  The following report was originally written in European Portuguese, including both the SQL database implementation and the detailed project documentation. However, for portfolio purposes, the report has been restructured and translated into English, while maintaining the original table and column names.<br><br>
  The document structure follows the guidelines provided by the instructor, presenting both the required specifications and a detailed description of the project development.<br>
</p>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2+-+Ask" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  This phase involves <strong>defining the issue to be solved</strong>, identifying stakeholders, and understanding their expectations for the project. 
  The goal is to analyze how Cyclistic users behave and provide insights that will help shape marketing strategies aimed at increasing membership conversions.
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2.1+-+Guiding+Questions" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  Three key questions will guide the analysis:
</p>

<ul style="text-align: justify;">
  <li><strong>How do annual members and casual riders use Cyclistic bikes differently?</strong></li>
  <li><strong>Why would casual riders buy Cyclistic annual memberships?</strong></li>
  <li><strong>How can Cyclistic use digital media to influence casual riders to become members?</strong></li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2.2+-+Stakeholders" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li><strong>Lily Moreno</strong>: Director of Marketing, responsible for developing campaigns and initiatives to promote the bike-share program.</li>
  <li><strong>Marketing Analytics Team</strong>: Collects, analyzes, and reports data to guide Cyclistic’s marketing strategies.</li>
  <li><strong>Executive Team</strong>: Evaluates and approves recommendations based on data-driven insights.</li>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3+-+Prepare" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.1+-+Data+Source+and+Privacy" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  The data was provided by <strong>Motivate International Inc.</strong> and can be accessed <a href="https://divvy-tripdata.s3.amazonaws.com/index.html">here</a> under this <a href="https://ride.divvybikes.com/data-license-agreement">license</a>. 
  Riders' personal information has been removed to ensure privacy.
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.2+-+Data+Organization+and+Limitations" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  The dataset includes records from <strong>January to December 2024</strong>, containing thousands of monthly trip details. 
  During data processing, missing values were identified and handled accordingly.
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.3+-+Tools+Used" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li><strong>Data Processing & Cleaning:</strong> Power BI</li>
  <li><strong>Visualization:</strong> Power BI</li>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4+-+Process" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4.1+-+Data+Import+and+Combination" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>The <strong>CSV files</strong> containing the <strong>monthly trip data for 2024</strong> were imported into Power BI.</li>
  <li>The <strong>end_station_id</strong> column was incorrectly recognized as a <strong>number</strong> instead of <strong>text</strong>, requiring adjustments.</li>
  <li>Tables were renamed for readability, such as <strong>2024_01_January, 2024_02_February</strong>, etc.</li>
  <li>All <strong>12 tables</strong> were merged into a single dataset: <strong>2024_All_Months_No_Clean</strong>, totaling <strong>5860538 rows</strong>.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4.2+-+Null+Values+and+Duplicates+Analysis" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>A <strong>summary table</strong> was created to identify missing and blank values.</li>
  <li>Columns with excessive missing data were removed:</li>
  <ul>
    <li><strong>start_station_name, start_station_id, end_station_name, end_station_id, end_lat, end_lng</strong></li>
  </ul>
  <li>This resulted in a refined dataset: <strong>2024_All_Months_First_Clean</strong>.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4.3+-+Creation+of+New+Columns" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Several new columns were created to enhance the dataset:</li>
  <ul>
    <li><strong>Duration (Minutes)</strong>: Difference between <em>ended_at</em> and <em>started_at</em>.</li>
    <li><strong>Duration (Minutes:Seconds)</strong>: Conversion of duration into minutes and seconds.</li>
    <li><strong>Day of Week (Number)</strong>: Numeric representation of the day.</li>
    <li><strong>Day of Week (Name)</strong>: Name of the weekday.</li>
    <li><strong>Month (Number)</strong>: Numeric representation of the month.</li>
    <li><strong>Month (Name)</strong>: Name of the month.</li>
  </ul>
  <li>This led to a new dataset: <strong>2024_All_Months_First_Calculations</strong>.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4.4+-+Outlier+Identification+and+Treatment" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>A <strong>Maximum_Minimum_Duration</strong> table was created to detect extreme values.</li>
  <li>Some trips had <strong>negative durations</strong> or lasted <strong>over 24 hours</strong>, indicating errors.</li>
  <li>The dataset was filtered to retain only trips lasting <strong>between 1 minute and 24 hours</strong>, resulting in the final dataset: <strong>2024_All_Months_Final</strong>.</li>
  <li>The final dataset contains <strong>5721442 rows</strong>.</li>
</ul>

<p style="text-align: justify;">
At this stage, the data is <strong>cleaned, structured, and ready</strong> for further analysis and visualization in Power BI.
</p>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=5+-+Analize" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=5.1+-+Summary+of+Trips+and+User+Types" alt="Typing SVG" />
</a>

![Summary_of_Trips_and_User_Types](https://github.com/user-attachments/assets/15583802-8fc1-4562-9ef6-4241c86bc8aa)

<ul style="text-align: justify;">
  <li><strong>Objective:</strong> Analyze the behavior of casual passengers and annual members, and understand their vehicle preferences.</li>
</ul>

<ul style="text-align: justify;">
  <li><strong>Data:</strong><br></li>
  <ul>
  <li>Total Trips: 5721442 trips with a duration between 1 minute and 24 hours.<br></li>
  <li>Long Trips (4h-24h): 8637 trips, which are rare events.<br></li>
  <li>After this observation, a filter was applied to consider only trips with a duration of 1 minute to 4 hours.<br></li>
  <li>Average Trip Duration: 14.88 minutes.</li>
  </ul>
</ul>

<ul style="text-align: justify;">
  <li><strong>Key Insights:</strong><br></li>
  <ul>
  <li><strong>Membership Type:</strong><br></li>
    <ul>
    <li>64% of users are annual members.<br></li>
    <li>Members take shorter trips, with an average duration of 11,99 minutes.<br></li>
    <li>Casuals have a longer average duration: 19,93 minutes.<br></li>
    </ul>
  <li><strong>Vehicle Type:</strong><br></li>
    <ul>
    <li>50,2% of trips are made using electric bikes.<br></li>
    <li>Classic bikes have the highest average trip duration, with 17,37 minutes.</li>
    </ul>
  </ul>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=5.2+-+Analysis+of+Trip+Numbers" alt="Typing SVG" />
</a>

![Analysis_of_Trip_Numbers](https://github.com/user-attachments/assets/3492dc99-164a-4f78-81be-e5ffcc13be84)

<ul style="text-align: justify;">
  <li><strong>Objective:</strong> Identify patterns in the number of trips throughout the week and year, segmented by user type.</li>
</ul>

<ul style="text-align: justify;">
  <li><strong>Data:</strong><br></li>
  <ul>
  <li>Total Trips: 5712804 trips with a duration between 1 minute and 4 hours.</li>
  </ul>
</ul>

<ul style="text-align: justify;">
  <li><strong>Insights:</strong><br></li>
  <ul>
  <li><strong>Weekly Distribution:</strong><br></li>
    <ul>
    <li>Members make more trips than casuals every day of the week.<br></li>
    <li>Saturday is the day with the highest number of trips for casuals.<br></li>
    <li>Wednesday is the day with the highest number of trips for members.<br></li>
    <li> In total, Saturday is the day with the highest number of trips (897053 trips), while Tuesday has the lowest (764251 trips).<br></li>
    </ul>
  <li><strong>Monthly Distribution:</strong><br></li>
    <ul>
    <li>The number of trips increases from January to September, reaching a peak in September (798901 trips in total).<br></li>
    <li>After September, there is a significant drop in trips, with the lowest number recorded in January (139884 trips).</li>
    </ul>
  </ul>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=5.3+-+Analysis+of+Average+Trip+Duration" alt="Typing SVG" />
</a>

![Analysis_of_Average_Trip_Duration](https://github.com/user-attachments/assets/db600c28-3bf4-4b99-81d8-7550b8bcf7e3)

<ul style="text-align: justify;">
  <li><strong>Objective:</strong> Analyze the average trip duration by day of the week and month, segmented by user type.</li>
</ul>

<ul style="text-align: justify;">
  <li><strong>Data:</strong><br></li>
  <ul>
  <li>Average Trip Duration: 14,88 minutes (considering trips from 1 minute to 4 hours).</li>
  </ul>
</ul>

<ul style="text-align: justify;">
  <li><strong>Insights:</strong><br></li>
  <ul>
  <li><strong>Weekly Distribution:</strong><br></li>
    <ul>
    <li>Casuals take longer trips, with peaks on the weekend.<br></li>
    <li>Members have more stable trip durations, with a slight increase on weekends.<br></li>
    <li>Highest average duration: Sunday (17,86 minutes).<br></li>
    <li>Lowest average duration: Tuesday (13,06 minutes).<br></li>
    </ul>
  <li><strong>Monthly Distribution:</strong><br></li>
    <ul>
    <li>Casuals show strong variation, with trip duration peaking in May. From April to August, they travel with an average of over 20 minutes.<br></li>
    <li>Members maintain a stable duration between 10 and 13 minutes.<br></li>
    <li>Month with highest average duration: July.<br></li>
    <li>Month with lowest average duration: January.</li>
    </ul>
  </ul>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=6+-+Share" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  The findings were shared and communicated with the relevant stakeholders.<br>
  The sharing phase of this project was completed using Power BI for visualizations and a detailed PDF report containing all the analyses conducted.
</p>

<ul style="text-align: justify;">
  <li><a href="https://github.com/David-Nogueira/Cyclistic-Bike-Share-Case-Study/raw/main/Cyclistic%20Bike%20Share%20-%20Google%20Data%20Analytics%20Capstone%20Project.pdf" download>Click here to download the PDF report</a></li>
</ul>

<p style="text-align: justify;">
  This ensures that the key dashboards and insights are accessible for review and decision-making.
</p>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7+-+Act" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  After analyzing the data and identifying key user behavior patterns, it is essential to define strategies to optimize service usage and increase the conversion of casual riders into annual members.
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.1+-+Introduction+of+Monthly+and+Seasonal+Plans" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Currently, the company offers daily and annual passes, but data shows that casual riders use the service more frequently during warmer months (April to September).</li>
  <li>A highly effective strategy would be to introduce a monthly or seasonal plan, encouraging these users to subscribe more consistently by offering progressive discounts that make the annual membership more attractive.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.2+-+Targeted+Engagement+Strategies" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Launch marketing campaigns highlighting the benefits of the annual membership, such as cost-effectiveness and access to exclusive promotions.</li>
  <li>Offer a one-month free trial during winter, when fewer trips are made, to encourage casual riders to experience the benefits of membership.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.3+-+Incentives+and+Loyalty+Programs" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Implement a loyalty points system, where each ride accumulates points that can be redeemed for discounts on an annual subscription.</li>
  <li>Introduce a user ranking system, rewarding frequent riders with benefits such as free rides or exclusive perks.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.4+-+Location-Based+Marketing+Campaigns" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Use data from the most popular stations among casual riders to install billboards and posters, promoting annual memberships.</li>
  <li>Launch geo-targeted digital marketing campaigns to ensure advertisements reach users who frequently use the service in these locations.</li>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.5+-+Strategies+to+Maximize+Bike+Usage" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>Since classic bikes have the highest average trip duration (17.37 minutes), offering exclusive benefits for using them could help balance fleet utilization.</li>
  <li>Adjust bike distribution based on usage patterns throughout the week, ensuring sufficient availability during peak periods.</li>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=8+-+Conclusion" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
  <li>The analysis of Cyclistic's data revealed clear patterns in user behavior: members use bikes consistently throughout the week, while casual riders concentrate their usage on weekends and warmer months. The preference for electric bikes and the differences in trip duration between the two groups highlight the need for targeted strategies.</li>
  <li>To maximize the conversion of casual riders into members, we recommend seasonal promotional campaigns, weekend-specific incentives, and improvements to the experience of classic bikes. These initiatives can drive membership growth and optimize company revenue.</li>
</ul>

<h2 align="left">
</h2>

<p align="center">
  <a href="#top">
    <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&center=true&vCenter=true&width=435&lines=Back+to+Top" alt="Typing SVG" />
  </a>
</p>

<a id="top"></a>

