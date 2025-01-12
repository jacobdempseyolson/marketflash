# marketflash
Database - Market Flash Design and Presentation 
# MarketFlash Database Project

## Project Overview
MarketFlash specializes in social media marketing, managing advertising campaigns, influencers, and performance analytics for their clients. The goal of this project is to design a comprehensive database to manage various entities like clients, campaigns, employees, platforms, influencers, contents, payments, metrics, and advertisements. This README file provides an overview of the database schema, its design, and the SQL script used to create and populate the database.

## Entity-Relationship Diagram (ERD)
The ERD outlines the relationships between the key entities in the database:
- **Clients**: Represents advertisers collaborating with MarketFlash.
- **Campaigns**: Represents marketing campaigns managed by MarketFlash.
- **Employees**: Represents employees managing or involved in campaigns.
- **Platforms**: Represents social media platforms used for advertisements.
- **Influencers**: Represents influencers collaborating in campaigns.
- **Contents**: Represents media content created for campaigns.
- **Payments**: Represents payments made for campaigns.
- **Metrics**: Represents performance metrics for campaigns.
- **Advertisements**: Represents advertisements created for campaigns.

## Database Schema

### Tables Description

#### 1. Influencers
- **Table Name**: `Influencers`
- **Columns**:
  - `Influencer_ID`: Unique identifier.
  - `Influencer_Name`: Full name.
  - `Social_Handle`: Social media handle.
  - `Follower_Count`: Number of followers.
  - `Email`: Contact email.
  - `Phone`: Contact phone number.

#### 2. Employees
- **Table Name**: `Employees`
- **Columns**:
  - `Employee_ID`: Unique identifier.
  - `Employee_Name`: Full name.
  - `Role`: Job title.
  - `Email`: Contact email.
  - `Phone`: Contact phone number.
  - `Department`: Department.
  - `Employee_Since`: Date joined.

#### 3. Payments
- **Table Name**: `Payments`
- **Columns**:
  - `Payment_ID`: Unique identifier.
  - `Date`: Payment date.
  - `Amount`: Payment amount.
  - `Payment_Type`: Type of payment.
  - `Payment_Details`: Additional details.
  - `Campaign_ID`: Associated campaign.

#### 4. Contents
- **Table Name**: `Contents`
- **Columns**:
  - `Content_ID`: Unique identifier.
  - `Title`: Content title.
  - `Description`: Content description.
  - `Media_Type`: Media type.
  - `Creation_Date`: Date created.
  - `Campaign_ID`: Associated campaign.

#### 5. Clients
- **Table Name**: `Clients`
- **Columns**:
  - `Client_ID`: Unique identifier.
  - `Client_Name`: Client name.
  - `Email`: Contact email.
  - `Phone`: Contact phone number.
  - `Industry`: Industry type.
  - `Contact_Start_Date`: Contract start date.
  - `Contact_End_Date`: Contract end date.

#### 6. Campaigns
- **Table Name**: `Campaigns`
- **Columns**:
  - `Campaign_ID`: Unique identifier.
  - `Campaign_Name`: Campaign name.
  - `Start_Date`: Start date.
  - `End_Date`: End date.
  - `Budget`: Budget allocated.
  - `Impressions`: Impressions count.
  - `Clicks`: Clicks count.
  - `Engagement`: Engagement count.
  - `Conversion_Rate`: Conversion rate.
  - `Client_ID`: Associated client.

#### 7. Advertisements
- **Table Name**: `Advertisements`
- **Columns**:
  - `Ad_ID`: Unique identifier.
  - `Ad_Name`: Advertisement name.
  - `Type`: Type of advertisement.
  - `Duration`: Duration.
  - `Budget`: Budget allocated.
  - `Platform_ID`: Associated platform.
  - `Campaign_ID`: Associated campaign.

#### 8. Platforms
- **Table Name**: `Platforms`
- **Columns**:
  - `Platform_ID`: Unique identifier.
  - `Platform_Name`: Platform name.
  - `URL`: Platform URL.
  - `Contact_Person`: Contact person.
  - `Email`: Contact email.
  - `Phone`: Contact phone number.

#### 9. Metrics
- **Table Name**: `Metrics`
- **Columns**:
  - `Metric_ID`: Unique identifier.
  - `Impressions`: Impressions count.
  - `Clicks`: Clicks count.
  - `Engagement`: Engagement count.
  - `Conversion_Rate`: Conversion rate.

### Relationships
- A **campaign** must have a client, and each client may have multiple campaigns.
- A **campaign** must be managed by one or more employees.
- A **campaign** can use multiple platforms and involve multiple influencers.
- Each piece of **content** and **advertisement** is associated with one campaign.
- **Payments** and **metrics** are linked to a single campaign.

## SQL Script
The SQL script provided in this repository creates the above tables, populates them with sample data, and includes JOIN queries to demonstrate data relationships and retrieval.

## Usage Instructions
1. Clone the repository.
2. Execute the SQL script using a database management system like MySQL or PostgreSQL.
3. Verify the schema by running the included JOIN queries.

## Deliverables
- ERD (Entity Relationship Diagram)
- SQL script for database creation and testing.
- Sample data insertion.
- JOIN queries for data verification.

## Conclusion
This database design supports comprehensive data management for MarketFlash, ensuring efficient campaign management and data analysis. The schema is scalable and maintains data integrity across all operations.

