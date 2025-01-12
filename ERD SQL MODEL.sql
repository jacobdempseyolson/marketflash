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

ALTER TABLE "Payments" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Contents" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Campaigns" ADD FOREIGN KEY ("Client_ID") REFERENCES "Clients" ("Client_ID");

ALTER TABLE "Advertisements" ADD FOREIGN KEY ("Platform_ID") REFERENCES "Platforms" ("Platform_ID");

ALTER TABLE "Advertisements" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Campaigns_Influencers" ADD FOREIGN KEY ("Influencer_ID") REFERENCES "Influencers" ("Influencer_ID");

ALTER TABLE "Campaigns_Influencers" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Campaigns_Employees" ADD FOREIGN KEY ("Employee_ID") REFERENCES "Employees" ("Employee_ID");

ALTER TABLE "Campaigns_Employees" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Campaigns_Platforms" ADD FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns" ("Campaign_ID");

ALTER TABLE "Campaigns_Platforms" ADD FOREIGN KEY ("Platform_ID") REFERENCES "Platforms" ("Platform_ID");
