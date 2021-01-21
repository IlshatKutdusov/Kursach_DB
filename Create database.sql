USE master
GO

CREATE DATABASE KutdusovIlshat
ON (
NAME = KutdusovIlshat_data,
FILENAME = 'C:\Users\800216\source\repos\Kursach_DB\KutdusovIlshatSQL\KutdusovIlshat_data.mdf'
)
LOG ON (
NAME = KutdusovIlshat_log,
FILENAME = 'C:\Users\800216\source\repos\Kursach_DB\KutdusovIlshatSQL\KutdusovIlshat_log.ldf'
);
