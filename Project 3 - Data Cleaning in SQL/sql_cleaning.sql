SELECT *
FROM portfolio..nhousing

--Standardize Date Format

SELECT SaleDate, CONVERT(Date, SaleDate)
FROM portfolio..nhousing

ALTER TABLE nhousing
ADD SaleDateConverted date

UPDATE nhousing
SET SaleDateConverted = CONVERT(date, SaleDate)


SELECT a.ParcelID, b.ParcelID, a.PropertyAddress, b.PropertyAddress
FROM portfolio..nhousing a
JOIN portfolio..nhousing b
	ON a.ParcelID = b.ParcelID
	AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM portfolio..nhousing a
JOIN portfolio..nhousing b
	ON a.ParcelID = b.ParcelID
	AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress IS NULL 

SELECT PropertyAddress
FROM portfolio..nhousing




