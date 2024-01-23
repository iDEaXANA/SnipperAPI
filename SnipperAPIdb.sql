CREATE DATABASE SnipperAPIDatabase
GO

-- DROP DATABASE SnipperAPI
-- GO

USE SnipperAPIDatabase
GO

CREATE SCHEMA SnipperSchema
GO


CREATE TABLE SnipperSchema.Snipps(
    -- TableId INT IDENTITY(Start, Increment By)
    ItemId INT IDENTITY(1,1) PRIMARY KEY,
    Language NVARCHAR(50),
    Code NVARCHAR(4000)
);
GO

SELECT * FROM SnipperSchema.Snipps

INSERT INTO SnipperSchema.Snipps ([Language],[Code])
VALUES 
    ('C#','Console.Write(''Hello World'');'),
    ('C#','List<int> numbers = new List<int> { 1, 2, 3, 4, 5 };'),
    ('C#','Math.Sqrt(64);'),
    ('JS','console.log(''Hello, World!'');'),
    ('JS','function multiply(a, b) {\n    return a * b;\n}'),
    ('JS','const square = num => num * num;'),
    ('Python','print(''Hello, World!'')'),
    ('Python','def add(a, b):\n    return a + b'),
    ('Python','class Circle:\n    def __init__(self, radius):\n        self.radius = radius\n\n    def area(self):\n        return 3.14 * self.radius ** 2'),
    ('Java','public class HelloWorld {\n    public static void main(String[] args) {\n        System.out.println(\"Hello, World!\");\n    }\n}')

ALTER TABLE SnipperSchema.Snipps
ALTER COLUMN Code NVARCHAR(4000);
