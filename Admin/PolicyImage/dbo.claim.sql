CREATE TABLE [dbo].[claim]
(
	[claim_id] INT NOT NULL PRIMARY KEY, 
    [policy_id] INT NULL, 
    [Intimation_Date] DATE NULL, 
    [description] VARCHAR(50) NULL, 
    [Document] VARCHAR(250) NULL, 
    [Total_amount] BIGINT NULL, 
    [Status] INT NULL
)
