#  Sweet Shop Management System

A simple web-based application to manage a sweet shop's inventory using **JSP**, **Servlets**, **Jakarta EE**, following **Test-Driven Development (TDD)** with **JUnit**.

---

##  Features

- Add New Sweets
- View All Available Sweets
- Search Sweets (by name, category, price range)
- Delete Sweets
- Purchase Sweets (reduce stock)
- Restock Sweets
- Sort Sweets (by price, quantity)
- JUnit Test Coverage for Service and DAO layers

---

## Tech Stack

| Layer         | Technology                          |
|---------------|--------------------------------------|
| Frontend      | JSP, HTML, CSS                      |
| Backend       | Java Servlets, Jakarta EE (JSP/Servlet API) |
| Testing       | JUnit 5 (TDD Approach)              |
| IDE           | Apache NetBeans                     |
| Build Tool    | Apache Maven                        |
| Server        | Apache Tomcat 10+                   |

---

## Project Structure

SweetShopManagement/ <br>
├── src/<br>
│ └── main/<br>
│ ├── java/<br>
│ │ └── com/sweetshop/<br>
│ │ ├── model/ # Sweet.java<br>
│ │ ├── dao/ # SweetDAO.java<br>
│ │ ├── service/ # SweetService.java<br>
│ │ └── servlet/ # AddSweetServlet.java, etc.<br>
│ └── webapp/<br>
│ ├── *.jsp # JSP pages for UI<br>
│ └── WEB-INF/web.xml # Servlet configuration<br>
├── test/<br>
│ └── java/com/sweetshop/test/ # JUnit test cases<br>
├── pom.xml # Maven configuration<br>


---

##  Test-Driven Development (TDD)

This project follows a TDD approach:
- All core business logic (add, delete, restock, purchase, etc.) is tested using **JUnit 5**.
- Test classes are located under `/test/java/com/sweetshop/test/`.

author : Makvana Jyoti
