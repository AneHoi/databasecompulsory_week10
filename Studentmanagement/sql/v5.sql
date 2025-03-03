BEGIN TRANSACTION;
CREATE TABLE [Instructors] (
    [Id] uniqueidentifier NOT NULL,
    [Firstname] nvarchar(max) NOT NULL,
    [Lastname] nvarchar(max) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [HireDate] date NOT NULL,
    CONSTRAINT [PK_Instructors] PRIMARY KEY ([Id])
);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303123113_addedInstructor', N'9.0.2');

COMMIT;
GO

