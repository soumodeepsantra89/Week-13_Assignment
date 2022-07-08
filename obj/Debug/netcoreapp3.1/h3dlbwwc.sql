IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Emp] (
    [EId] int NOT NULL IDENTITY,
    [EName] nvarchar(max) NULL,
    [EDesig] nvarchar(max) NULL,
    [EDOJ] datetime2 NULL,
    CONSTRAINT [PK_Emp] PRIMARY KEY ([EId])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220708142032_FirstMig', N'3.1.25');

GO

