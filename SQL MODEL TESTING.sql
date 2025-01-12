
-- Create tables
CREATE TABLE "Influencers" (
  "Influencer_ID" CHAR(36) PRIMARY KEY,
  "Influencer_Name" VARCHAR(50) NOT NULL,
  "Social_Handle" VARCHAR(50) UNIQUE NOT NULL,
  "Follower_Count" BIGINT,
  "Email" VARCHAR(100),
  "Phone" VARCHAR(20)
);

CREATE TABLE "Employees" (
  "Employee_ID" CHAR(36) PRIMARY KEY,
  "Employee_Name" VARCHAR(50) NOT NULL,
  "Role" VARCHAR(50) NOT NULL,
  "Email" VARCHAR(100),
  "Phone" VARCHAR(20),
  "Department" VARCHAR(50) NOT NULL,
  "Employee_Since" DATE NOT NULL
);

CREATE TABLE "Payments" (
  "Payment_ID" CHAR(36) PRIMARY KEY,
  "Date" DATE NOT NULL,
  "Amount" NUMERIC(12,2) NOT NULL,
  "Payment_Type" VARCHAR(20),
  "Payment_Details" VARCHAR(255),
  "Campaign_ID" CHAR(36)
);

CREATE TABLE "Contents" (
  "Content_ID" CHAR(36) PRIMARY KEY,
  "Title" VARCHAR(100) NOT NULL,
  "Description" TEXT,
  "Media_Type" VARCHAR(50) NOT NULL,
  "Creation_Date" DATE NOT NULL,
  "Campaign_ID" CHAR(36)
);

CREATE TABLE "Clients" (
  "Client_ID" CHAR(36) PRIMARY KEY,
  "Client_Name" VARCHAR(50) NOT NULL,
  "Email" VARCHAR(100),
  "Phone" VARCHAR(20),
  "Industry" VARCHAR(50),
  "Contact_Start_Date" DATETIME NOT NULL,
  "Contact_End_Date" DATETIME
);

CREATE TABLE "Campaigns" (
  "Campaign_ID" CHAR(36) PRIMARY KEY,
  "Campaign_Name" VARCHAR(50) NOT NULL,
  "Start_Date" DATETIME NOT NULL,
  "End_Date" DATETIME NOT NULL,
  "Budget" NUMERIC(12,2) NOT NULL,
  "Impressions" BIGINT,
  "Clicks" BIGINT,
  "Engagement" BIGINT,
  "Conversion_Rate" NUMERIC(5,2),
  "Client_ID" CHAR(36)
);

CREATE TABLE "Advertisements" (
  "Ad_ID" CHAR(36) PRIMARY KEY,
  "Ad_Name" VARCHAR(50) NOT NULL,
  "Type" VARCHAR(20),
  "Duration" DECIMAL(10,2),
  "Budget" NUMERIC(12,2) NOT NULL,
  "Platform_ID" CHAR(36),
  "Campaign_ID" CHAR(36)
);

CREATE TABLE "Campaigns_Influencers" (
  "Campaign_Influencer_ID" CHAR(36) PRIMARY KEY,
  "Influencer_ID" CHAR(36),
  "Campaign_ID" CHAR(36)
);

CREATE TABLE "Campaigns_Employees" (
  "Campaign_Employee_ID" CHAR(36) PRIMARY KEY,
  "Employee_ID" CHAR(36),
  "Campaign_ID" CHAR(36)
);

CREATE TABLE "Campaigns_Platforms" (
  "Campaign_Platform_ID" CHAR(36) PRIMARY KEY,
  "Campaign_ID" CHAR(36),
  "Platform_ID" CHAR(36)
);

CREATE TABLE "Platforms" (
  "Platform_ID" CHAR(36) PRIMARY KEY,
  "Platform_Name" VARCHAR(50) NOT NULL,
  "URL" VARCHAR(255) NOT NULL,
  "Contact_Person" VARCHAR(50),
  "Email" VARCHAR(100),
  "Phone" VARCHAR(20)
);

-- Insert fake data
-- Influencers
INSERT INTO Influencers (Influencer_ID, Influencer_Name, Social_Handle, Follower_Count, Email, Phone)
VALUES
  ('1', 'Alice Johnson', '@alice_j', 1200000, 'alice@example.com', '+1234567890'),
  ('2', 'Bob Smith', '@bob_smith', 850000, 'bob@example.com', '+1234567891'),
  ('3', 'Charlie Brown', '@charlie_b', 1500000, 'charlie@example.com', '+1234567892'),
  ('4', 'David Lee', '@david_lee', 950000, 'david@example.com', '+1234567893'),
  ('5', 'Eva Davis', '@eva_d', 1100000, 'eva@example.com', '+1234567894');

-- Employees
INSERT INTO Employees (Employee_ID, Employee_Name, Role, Email, Phone, Department, Employee_Since)
VALUES
  ('1', 'John Doe', 'Marketing Manager', 'johndoe@example.com', '+1234567890', 'Marketing', '2020-05-01'),
  ('2', 'Sarah Miller', 'Content Strategist', 'sarah@example.com', '+1234567891', 'Content', '2021-07-10'),
  ('3', 'Michael Harris', 'Project Coordinator', 'michael@example.com', '+1234567892', 'Operations', '2019-02-15'),
  ('4', 'Laura Taylor', 'Graphic Designer', 'laura@example.com', '+1234567893', 'Design', '2022-03-20'),
  ('5', 'James Wilson', 'HR Specialist', 'james@example.com', '+1234567894', 'HR', '2018-10-05');

-- Payments
INSERT INTO Payments (Payment_ID, Date, Amount, Payment_Type, Payment_Details, Campaign_ID)
VALUES
  ('1', '2025-01-01', 1000.00, 'Wire Transfer', 'Payment for campaign A', '1'),
  ('2', '2025-01-10', 2000.00, 'Credit Card', 'Payment for campaign B', '2'),
  ('3', '2025-01-15', 1500.00, 'Cash', 'Payment for campaign C', '3'),
  ('4', '2025-01-20', 2500.00, 'Check', 'Payment for campaign D', '4'),
  ('5', '2025-01-25', 1200.00, 'Wire Transfer', 'Payment for campaign E', '5');

-- Contents
INSERT INTO Contents (Content_ID, Title, Description, Media_Type, Creation_Date, Campaign_ID)
VALUES
  ('1', 'Summer Collection Launch', 'Launching our new summer line of products', 'Video', '2025-01-05', '1'),
  ('2', 'Winter Sale', 'Advertise our winter sale event', 'Image', '2025-01-12', '2'),
  ('3', 'Product Review', 'Influencer reviews our latest product', 'Blog', '2025-01-15', '3'),
  ('4', 'Holiday Specials', 'Promoting holiday discounts and deals', 'Video', '2025-01-18', '4'),
  ('5', 'New Year Campaign', 'Kick off the new year with special promotions', 'Podcast', '2025-01-22', '5');

-- Clients
INSERT INTO Clients (Client_ID, Client_Name, Email, Phone, Industry, Contact_Start_Date, Contact_End_Date)
VALUES
  ('1', 'Tech Innovations', 'contact@techinnovations.com', '+1234567890', 'Technology', '2023-05-01', '2025-05-01'),
  ('2', 'Fashion Trends', 'info@fashiontrends.com', '+1234567891', 'Fashion', '2024-01-15', NULL),
  ('3', 'Healthy Living', 'hello@healthyliving.com', '+1234567892', 'Health', '2022-10-10', '2025-01-01'),
  ('4', 'Green Solutions', 'support@greensolutions.com', '+1234567893', 'Environment', '2021-07-05', '2024-07-05'),
  ('5', 'Foodie Paradise', 'contact@foodieparadise.com', '+1234567894', 'Food', '2023-03-01', '2024-12-01');

-- Campaigns
INSERT INTO Campaigns (Campaign_ID, Campaign_Name, Start_Date, End_Date, Budget, Impressions, Clicks, Engagement, Conversion_Rate, Client_ID)
VALUES
  ('1', 'New Year Sale', '2025-01-01', '2025-01-31', 50000.00, 1000000, 50000, 30000, 5.0, '1'),
  ('2', 'Winter Fashion Launch', '2025-01-05', '2025-02-05', 40000.00, 500000, 20000, 15000, 4.0, '2'),
  ('3', 'Healthy Eating Campaign', '2025-01-10', '2025-02-10', 30000.00, 400000, 25000, 10000, 6.0, '3'),
  ('4', 'Sustainable Living', '2025-01-12', '2025-02-12', 60000.00, 700000, 35000, 20000, 4.5, '4'),
  ('5', 'Food Delivery Promotion', '2025-01-15', '2025-02-15', 45000.00, 600000, 30000, 25000, 5.5, '5');

-- Advertisements
INSERT INTO Advertisements (Ad_ID, Ad_Name, Type, Duration, Budget, Platform_ID, Campaign_ID)
VALUES
  ('1', 'Winter Sale Banner', 'Banner', 30.00, 5000.00, '1', '1'),
  ('2', 'New Year Video', 'Video', 60.00, 7000.00, '2', '2'),
  ('3', 'Healthy Recipe Ad', 'Video', 45.00, 4000.00, '3', '3'),
  ('4', 'Eco-Friendly Products', 'Image', 15.00, 3000.00, '4', '4'),
  ('5', 'Food Delivery Promo', 'Banner', 25.00, 6000.00, '5', '5');

-- Campaigns_Influencers
INSERT INTO Campaigns_Influencers (Campaign_Influencer_ID, Influencer_ID, Campaign_ID)
VALUES
  ('1', '1', '1'),
  ('2', '2', '2'),
  ('3', '3', '3'),
  ('4', '4', '4'),
  ('5', '5', '5');

-- Campaigns_Employees
INSERT INTO Campaigns_Employees (Campaign_Employee_ID, Employee_ID, Campaign_ID)
VALUES
  ('1', '1', '1'),
  ('2', '2', '2'),
  ('3', '3', '3'),
  ('4', '4', '4'),
  ('5', '5', '5');

-- Campaigns_Platforms
INSERT INTO Campaigns_Platforms (Campaign_Platform_ID, Campaign_ID, Platform_ID)
VALUES
  ('1', '1', '1'),
  ('2', '2', '2'),
  ('3', '3', '3'),
  ('4', '4', '4'),
  ('5', '5', '5');

-- Platforms
INSERT INTO Platforms (Platform_ID, Platform_Name, URL, Contact_Person, Email, Phone)
VALUES
  ('1', 'Instagram', 'https://www.instagram.com', 'Rachel Adams', 'rachel@insta.com', '+1234567890'),
  ('2', 'Facebook', 'https://www.facebook.com', 'John Smith', 'john@facebook.com', '+1234567891'),
  ('3', 'YouTube', 'https://www.youtube.com', 'Emily Clark', 'emily@youtube.com', '+1234567892'),
  ('4', 'Twitter', 'https://www.twitter.com', 'David Kim', 'david@twitter.com', '+1234567893'),
  ('5', 'TikTok', 'https://www.tiktok.com', 'Sophia Lee', 'sophia@tiktok.com', '+1234567894');

-- JOIN queries
-- 1. List Campaigns and Their Associated Clients
SELECT
  Campaigns.Campaign_Name,
  Clients.Client_Name
FROM
  Campaigns
JOIN
  Clients ON Campaigns.Client_ID = Clients.Client_ID;

-- 2. List Employees and the Campaigns They're Working On
SELECT
  Employees.Employee_Name,
  Campaigns.Campaign_Name
FROM
  Employees
JOIN
  Campaigns_Employees ON Employees.Employee_ID = Campaigns_Employees.Employee_ID
JOIN
  Campaigns ON Campaigns_Employees.Campaign_ID = Campaigns.Campaign_ID;

-- 3. List Influencers and Their Campaigns
SELECT
  Influencers.Influencer_Name,
  Campaigns.Campaign_Name
FROM
  Influencers
JOIN
  Campaigns_Influencers ON Influencers.Influencer_ID = Campaigns_Influencers.Influencer_ID
JOIN
  Campaigns ON Campaigns_Influencers.Campaign_ID = Campaigns.Campaign_ID;

-- 4. List Advertisements and Their Platforms
SELECT
  Advertisements.Ad_Name,
  Platforms.Platform_Name
FROM
  Advertisements
JOIN
  Platforms ON Advertisements.Platform_ID = Platforms.Platform_ID;

-- 5. List Payments and Corresponding Campaigns
SELECT
  Payments.Amount,
  Campaigns.Campaign_Name
FROM
  Payments
JOIN
  Campaigns ON Payments.Campaign_ID = Campaigns.Campaign_ID;
