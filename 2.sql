-- TRUNCATE TABLE [Employee Table]
-- CREATE TABLE [Employee Table] (
--     EmployeeNumber int NOT NULL,
--     EmployeeFirstName varchar(50) NOT NULL,
--     EmployeeLastName varchar(50) NOT NULL,
--     EmployeeMiddleName varchar(50) NULL,
--     EmployeeGovermentID char(10) NULL,
--     DateOfBirth Date NOT NULL,
--     Department varchar(50) NULL,
--     Manager int NULL
-- )
-- SELECT
--     *
-- FROM
--     [Employee Table]
-- INSERT INTO
--     [Employee Table](
--         [EmployeeNumber],
--         [EmployeeFirstName],
--         [EmployeeMiddleName],
--         [EmployeeLastName],
--         [EmployeeGovermentID],
--         [DateOfBirth],
--         [Department],
--         [Manager]
--     )
-- VALUES
--     (
--         2,
--         'Jane',
--         null,
--         'Zwilling',
--         'AB123456G',
--         '1994-12-30',
--         'Customer Relations',
--         NULL
--     )
-- CREATE TABLE [tbltransaction] (
--     Amount smallmoney NOT NULL,
--     DateOfTransaction Date NOT NULL,
--     EmployeeNumber smallint NOT NULL
-- )
-- INSERT INTO
--     [dbo].[tblTransaction]
-- VALUES
--     (858.16, '2024-08-07', 1),
--     (804.4, '2025-01-02', 1),
--     (-808.17, '2025-10-30', 1),
--     (957.03, '2024-05-20', 2),
--     (786.22, '2024-11-11', 2),
--     (-179.47, '2025-03-15', 2),
--     (-967.36, '2025-10-22', 2),
--     (-576.77, '2025-11-12', 3),
--     (-693.26, '2024-11-21', 4),
--     (390.52, '2024-11-29', 5),
--     (-500.73, '2025-09-15', 5),
--     (228.51, '2025-12-28', 5),
--     (-491.37, '2024-01-15', 6),
--     (-571, '2024-08-17', 6),
--     (817.11, '2025-07-16', 7),
--     (-369.69, '2025-04-06', 8),
--     (-573.18, '2025-05-06', 8),
--     (117.21, '2024-05-28', 10),
--     (981.18, '2025-04-18', 10),
--     (861.16, '2024-05-18', 11),
--     (-912.11, '2024-07-11', 11),
--     (-589.77, '2025-02-11', 11),
--     (-2.77, '2025-05-12', 11),
--     (-946.12, '2025-06-21', 11),
--     (-920.27, '2025-01-04', 12);
SELECT
    E.EmployeeFirstName,
    E.EmployeeGovernmentID,
    E.EmployeeNumber,
    Amount,
    DateOfTransaction
FROM
    [tblEmployee] AS E
    INNER JOIN [tbltransaction] AS T ON E.EmployeeNumber = T.EmployeeNumber
