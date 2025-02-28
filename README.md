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
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2+-+Proposed+Statement" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2.1+-+Database+Requirements" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
<li>1 - Design a database with at least 8 interrelated tables</li>
</ul>

<ul style="text-align: justify;">
<li>2 - Create in SQL:<br></li>
  <ul>
  <li>2.1 - Creation:<br></li>
    <ul>
    <li>2.1.1 - Database<br></li>
    <li>2.1.2 - Tables<br></li>
    </ul>
  <li>2.2 - Deletion:<br></li>
    <ul>
    <li>2.2.1 - Database<br></li>
    <li>2.2.2 - Tables<br></li>
    <li>2.2.3 - Records<br></li>
    </ul>
  <li>2.3 - Modification:<br></li>
    <ul>
    <li>2.3.1 - Tables<br></li>
    <li>2.3.2 - Records<br></li>
    </ul>
  <li>2.4 - Insert at least 10 records into each table<br></li>
  <li>2.5 - Query creation:<br></li>
    <ul>
    <li>2.5.1 - 5 simples queries using criteria<br></li>
    <li>2.5.2 - At least one cross query<br></li>
    <li>2.5.3 - 4 queries using functions (Date, Mathematical, etc)<br></li>
    <li>2.5.4 - Use of at least 8 functions<br></li>
    <li>2.5.5 - Use of operators AND, OR, NOT, LIKE, IN, BETWEEN, etc<br></li>
    <li>2.5.6 - Server protection against mass data deletion<br></li>
    <li>2.5.7 - Triggers<br></li>
    </ul>
  </ul>
</ul>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=2.2+-+Report+Structure" alt="Typing SVG" />
</a>

<ul style="text-align: justify;">
<li>1 - Introduction</li>
<ul>
  <li>Characteristics of database servers, particularly MySQL Server<br></li>
  <li>Comparison with other servers like SQL Server, etc<br></li>
</ul>  
<li>2 - Project Description</li>
<li>3 - Relational Database Model</li>
<li>4 - Project Code</li>
<li>5 - Data Tables</li>
<li>6 - Conclusion</li>
<li>7 - Bibliography</li>
</ul>


<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3+-+Introduction" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.1+-+What+is+Structured+Query+Language+(SQL)?" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
SQL is a programming language used by almost all relational databases to query, manipulate, and define data and to provide access control. SQL was first developed at IBM in the 1970s, with Oracle as one of the main contributors, which led to the implementation of the ANSI SQL standard. SQL has driven many extensions from companies such as IBM, Oracle, and Microsoft. Although SQL is still widely used today, new programming languages are beginning to emerge <sup>[1]</sup>.<br>
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.2+-+What+is+Database+Software?" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
Database software is used to create, edit, and maintain database files and records, allowing for easier file and record creation, data entry, data editing, updating, and report generation. The software also handles data storage, backup and report generation, multi-access control, and security. Strong database security is especially important today, as data theft becomes more frequent. Sometimes, database software is also referred to as a "database management system" (DBMS) <sup>[1]</sup>.<br>
Database software simplifies data management by allowing users to store data in a structured way and then access it. It usually features a graphical interface that helps create and manage data, and in some cases, users can build their own databases using database software <sup>[1]</sup>.<br>
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.3+-+What+is+a+Database+Management+System+(DBMS)?" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
A database usually requires a comprehensive database software program, known as a Database Management System (DBMS). A DBMS acts as an interface between the database and its users or end programs, allowing users to retrieve, update, and manage how information is organized and optimized. The DBMS also facilitates database supervision and control, enabling a variety of administrative operations, such as performance monitoring, optimization, backup, and recovery <sup>[1]</sup>.<br>
Some examples of popular database software, or DBMSs, include MySQL, Microsoft Access, Microsoft SQL Server, FileMaker Pro, Oracle Database, and dBASE <sup>[1]</sup>.<br>
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.4+-+What+is+a+MySQL+Database?" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
MySQL is an open-source relational database management system based on SQL. It was designed and optimized for web applications and can run on any platform. As new and different requirements emerged with the Internet, MySQL became the platform of choice for developers and web-based applications. Since it was designed to handle millions of queries and thousands of transactions, MySQL is a popular choice for e-commerce companies that need to manage multiple financial transactions. On-demand flexibility is MySQL’s key feature <sup>[1]</sup>.<br>
MySQL is the DBMS behind some of the world's leading websites and web-based applications, including Airbnb, Uber, LinkedIn, Facebook, Twitter, and YouTube <sup>[1]</sup>.<br>
</p>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=3.5+-+Types+of+Databases" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
First, you must determine when to choose a relational database over a non-relational database and vice versa. Since SQL databases are structured, they are perfect for handling transactions, records, and libraries. NoSQL databases have the capability to support all forms of data, including text, images, IoT notifications, and other types of big data. Both SQL and NoSQL databases readily provide their respective data formats for search and analysis <sup>[2]</sup>.<br>
Let's look at some of the most used SQL and NoSQL databases:
</p>
<ul style="text-align: justify;">
<li><strong>SQL Server:</strong> SQL database services are typically built on a relational database management system, and many benefit from cloud computing capabilities. Azure SQL, for example, is a family of managed SQL database services built on the SQL Server database engine and hosted in the Azure cloud <sup>[2]</sup>.<br></li>
<li><strong>PostgreSQL:</strong> PostgreSQL is an advanced object-relational database management system (ORDBMS) that stores and scales workloads too complex to be supported by standard systems. A cloud-based PostgreSQL service, such as Azure Database for PostgreSQL, offers additional enterprise-grade features and extensibility, along with support from the PostgreSQL open-source community <sup>[2]</sup>.<br></li>
<li><strong>MySQL:</strong> MySQL is one of the most popular and widely used open-source relational database management systems in modern application development. Unlike SQL, MySQL is software rather than a language. A managed MySQL database service, such as Azure Database for MySQL, allows you to provision a database in minutes and scale just as quickly <sup>[2]</sup>.<br></li>
<li><strong>NoSQL:</strong> NoSQL database services enable users to develop modern, high-performance, and reactive applications at any size or scale. They also support a wide range of open-source databases. Azure Cosmos DB supports PostgreSQL, MongoDB, and Apache Cassandra, is fully managed, and is capable of automatic updates and auto-scaling <sup>[2]</sup>.<br></li>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=4+-+Project+Description" alt="Typing SVG" />
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

