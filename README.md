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

<p style="text-align: justify;">
The SQL database project based on the SteamDB website consists of creating a database structure to store information related to games, DLCs, genres, developers, users, reviews, sales, events/promotions, live streams, and comments. Each table represents a main entity or an important aspect of the SteamDB ecosystem.<br>
</p>

<ul style="text-align: justify;">
  <li><strong>Table "jogos":</strong> Stores information about games, including name, publisher, release date, supported languages, genre, and developer.</li><br>
  <li><strong>Table "dlcs":</strong> Contains details about additional content (DLCs) associated with games, such as name, publisher, release date, supported languages, genre, and developer.</li><br>
  <li><strong>Table "generos":</strong> Maintains a list of game genres, such as action, adventure, RPG, etc.</li><br>
  <li><strong>Table "desenvolvedores":</strong> Stores information about game developers, including name and country of origin.</li><br>
  <li><strong>Table "utilizadores":</strong> Registers system users, including username, registration date, and associated games/DLCs.</li><br>
  <li><strong>Table "analises":</strong> Stores reviews made by users for games/DLCs, including rating and review date.</li><br>
  <li><strong>Table "vendas":</strong> Records sales of games/DLCs, including price, purchase date, and associated user.</li><br>
  <li><strong>Table "eventospromocoes":</strong> Contains details about events and promotions related to games/DLCs, such as name, start/end dates, discounted price, and associated developer.</li><br>
  <li><strong>Table "transmissaoaovivo":</strong> Stores information about live streams related to games/DLCs, including start/end dates and associated user.</li><br>
  <li><strong>Table "comentarios":</strong> Registers comments made by users for games/DLCs, including comment text, comment date, and associated user.</li>
</ul>

<p style="text-align: justify;">
This project provides a solid foundation for managing information related to the gaming universe, enabling queries, analysis, and tracking of various activities within the SteamDB environment.
</p>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=5+-+Relational+Database+Model" alt="Typing SVG" />
</a>

![Relational_Database_Model](https://github.com/user-attachments/assets/badb7712-d7c3-471e-abd0-370ca688dd21)

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=6+-+Project+Code" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
  The complete project code can be found in the PDF report, which contains the detailed implementation of the database, as well as in the SQL file available for download.
</p>

<ul style="text-align: justify;">
  <li><a href="https://github.com/David-Nogueira/SteamDB-SQL_Project-Cesae_Digital/raw/main/SteamDB%20-%20SQL%20Project%20-%20Cesae%20Digital.pdf" download>Click here to download the PDF report</a></li>
  <li><a href="https://github.com/David-Nogueira/SteamDB-SQL_Project-Cesae_Digital/raw/main/SteamDB%20-%20SQL%20Project%20-%20Cesae%20Digital.sql" download>Click here to view the SQL file</a></li>
</ul>

<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7+-+Data+Tables" alt="Typing SVG" />
</a>

<br>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.1+-+Table+Jogos" alt="Typing SVG" />
</a>

![Table_Jogos](https://github.com/user-attachments/assets/ceb15c07-6b26-40cd-acc7-7f3d7e18c3f9)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.2+-+Table+DLCs" alt="Typing SVG" />
</a>

![Table_DLCs](https://github.com/user-attachments/assets/c278a12d-186b-442f-ae2e-a995050f33b2)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.3+-+Table+Generos" alt="Typing SVG" />
</a>

![Table Generos](https://github.com/user-attachments/assets/6e9574d8-84f7-43a9-ad83-b180b934f8c9)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.4+-+Table+Desenvolvedores" alt="Typing SVG" />
</a>

![Table_Desenvolvedores](https://github.com/user-attachments/assets/46615123-90ba-49c1-8fcc-7f7867abfde0)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.5+-+Table+Utilizadores" alt="Typing SVG" />
</a>

![Table_Utilizadores](https://github.com/user-attachments/assets/9d713795-b5b2-4e33-940b-2a29c24ec1cc)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.6+-+Table+Vendas" alt="Typing SVG" />
</a>

![Table_Vendas](https://github.com/user-attachments/assets/94930903-df47-43ed-bcb6-2a72ad2296c9)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.7+-+Table+EventosPromocoes" alt="Typing SVG" />
</a>

![Table_EventosPromocoes](https://github.com/user-attachments/assets/3e41060f-7fef-4572-bd12-380279d6013b)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.8+-+Table+TransmissaoAoVivo" alt="Typing SVG" />
</a>

![Table_TransmissaoAoVivo](https://github.com/user-attachments/assets/80fb297f-5827-447e-86e1-9d9b4fef2898)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.9+-+Table+Comentarios" alt="Typing SVG" />
</a>

![Table_Comentarios](https://github.com/user-attachments/assets/52442206-8a07-45df-a7a7-1c14c4afd33e)

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=7.10+-+Table+Analises" alt="Typing SVG" />
</a>

![Table_Analises](https://github.com/user-attachments/assets/7e44f036-7e69-4c2a-8052-1a1fafbbdd34)


<h2 align="left">
</h2>

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&width=435&lines=8+-+Conclusion" alt="Typing SVG" />
</a>

<p style="text-align: justify;">
This SQL database project, based on the SteamDB website, presents a comprehensive structure for storing and managing information related to games, DLCs, and associated activities. The implementation of this project took some time and effort, as I had no prior experience or skills in SQL development, and due to the complexity involved in certain functionalities.<br><br>
In terms of time, the initial implementation of the database schema and main tables might have been faster, especially if I were already familiar with SQL and data modeling. However, it was the creation of advanced queries and triggers that consumed the most time, particularly to ensure data integrity.<br><br>
Regarding difficulty, this project presented several challenges, especially when dealing with complex relationships between tables and ensuring data consistency. Proper database modeling required careful attention to detail to avoid potential issues.<br><br>
In summary, although this project provides a solid foundation for managing information related to games and associated activities, successful implementation requires careful planning, strong technical skills, and attention to detail to overcome potential challenges and limitations.
</p>

<h2 align="left">
</h2>

<p align="center">
  <a href="#top">
    <img src="https://readme-typing-svg.herokuapp.com?font=Electrolize&duration=1&pause=1&color=FF9900&repeat=false&center=true&vCenter=true&width=435&lines=Back+to+Top" alt="Typing SVG" />
  </a>
</p>

<a id="top"></a>

