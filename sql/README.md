# SQL Analysis – Hotel Booking Data

This folder contains Oracle SQL scripts used to perform exploratory analysis and KPI calculations on the hotel booking dataset.
All analysis shown here is based on executed queries in Oracle SQL Plus, and the outputs are documented using screenshots.

---

## 📊 Dataset Overview

* Table name: `hotel_bookings`
* Total records: **119,390**
* Data includes hotel type, booking dates, cancellation status, ADR, lead time, and market segments.

---

## 🎯 SQL KPIs & Analysis Performed

### 1. Overall Booking Volume

* Total number of bookings in the dataset
* Used to validate successful data loading

### 2. Cancellation Analysis

* Overall cancellation rate
* Cancellation rate by hotel type
* Cancellation rate by month (seasonality)

### 3. Revenue Analysis

* Total realized revenue (non-cancelled bookings)
* Revenue lost due to cancellations
* Revenue comparison by hotel type

### 4. Time-Based Booking Trends

* Monthly booking trends across years
* Seasonality insights using arrival month and year

### 5. Customer Behavior Analysis

* Cancellation rate by lead time groups:

  * Short (< 30 days)
  * Medium (30–90 days)
  * Long (> 90 days)
* Average lead time across all bookings

### 6. Market Segment Analysis

* Total bookings per market segment
* Cancellation rate by market segment

---

## 🛠 Tools Used

* Oracle SQL Plus
* SQL aggregate functions (COUNT, SUM, AVG)
* CASE statements for customer segmentation





