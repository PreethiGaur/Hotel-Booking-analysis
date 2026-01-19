/* -------------------------------------------------

1. TOTAL BOOKINGS
   -------------------------------------------------- */
   SELECT COUNT(*) AS total_bookings
   FROM hotel_bookings;

/* -------------------------------------------------
2. OVERALL CANCELLATION RATE
-------------------------------------------------- */
SELECT
ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancellation_rate
FROM hotel_bookings;

/* -------------------------------------------------
3. CANCELLATION RATE BY HOTEL TYPE
-------------------------------------------------- */
SELECT
hotel,
ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancel_rate
FROM hotel_bookings
GROUP BY hotel;

/* -------------------------------------------------
4. MONTHLY CANCELLATION RATE (SEASONALITY)
-------------------------------------------------- */
SELECT
arrival_date_month,
ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancel_rate
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY cancel_rate DESC;

/* -------------------------------------------------
5. TOTAL REVENUE (NON-CANCELLED BOOKINGS)
-------------------------------------------------- */
SELECT
hotel,
ROUND(SUM(adr), 2) AS revenue
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY hotel;

/* -------------------------------------------------
6. REVENUE LOST DUE TO CANCELLATIONS
-------------------------------------------------- */
SELECT
hotel,
ROUND(SUM(adr), 2) AS lost_revenue
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY hotel;

/* -------------------------------------------------
7. CANCELLATION RATE BY LEAD TIME GROUP
-------------------------------------------------- */
SELECT
CASE
WHEN lead_time < 30 THEN 'Short'
WHEN lead_time BETWEEN 30 AND 90 THEN 'Medium'
ELSE 'Long'
END AS lead_time_group,
ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancel_rate
FROM hotel_bookings
GROUP BY
CASE
WHEN lead_time < 30 THEN 'Short'
WHEN lead_time BETWEEN 30 AND 90 THEN 'Medium'
ELSE 'Long'
END;

/* -------------------------------------------------
8. MARKET SEGMENT ANALYSIS
-------------------------------------------------- */
SELECT
market_segment,
COUNT(*) AS bookings,
ROUND(SUM(is_canceled) / COUNT(*) * 100, 2) AS cancel_rate
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancel_rate DESC;

/* -------------------------------------------------
9. AVERAGE LEAD TIME
-------------------------------------------------- */
SELECT
ROUND(AVG(lead_time), 2) AS avg_lead_time
FROM hotel_bookings;

/* -------------------------------------------------
10. MONTHLY BOOKING TRENDS
-------------------------------------------------- */
SELECT
arrival_date_year,
arrival_date_month,
COUNT(*) AS bookings
FROM hotel_bookings
GROUP BY arrival_date_year, arrival_date_month
ORDER BY arrival_date_year, arrival_date_month;
