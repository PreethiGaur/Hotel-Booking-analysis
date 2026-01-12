-- =====================================================
-- Hotel Booking Data Analysis
-- Dataset: Hotel Booking Demand (Kaggle)
-- Tool: Oracle SQL / SQL Plus
-- =====================================================

/*
Assumed table: hotel_bookings

Columns:
hotel
is_canceled
lead_time
arrival_date_year
arrival_date_month
stays_in_weekend_nights
stays_in_week_nights
adults
children
babies
country
market_segment
distribution_channel
adr
*/

-- -----------------------------------------------------
-- 1. Total number of bookings
-- -----------------------------------------------------
SELECT COUNT(*) AS total_bookings
FROM hotel_bookings;


-- -----------------------------------------------------
-- 2. Total canceled bookings
-- -----------------------------------------------------
SELECT COUNT(*) AS total_cancellations
FROM hotel_bookings
WHERE is_canceled = 1;


-- -----------------------------------------------------
-- 3. Cancellation rate (%)
-- -----------------------------------------------------
SELECT 
  ROUND(
    (SUM(is_canceled) / COUNT(*)) * 100, 2
  ) AS cancellation_rate_percentage
FROM hotel_bookings;


-- -----------------------------------------------------
-- 4. Average Daily Rate (ADR)
-- -----------------------------------------------------
SELECT 
  ROUND(AVG(adr), 2) AS average_daily_rate
FROM hotel_bookings;


-- -----------------------------------------------------
-- 5. Average lead time
-- -----------------------------------------------------
SELECT 
  ROUND(AVG(lead_time), 2) AS avg_lead_time
FROM hotel_bookings;
