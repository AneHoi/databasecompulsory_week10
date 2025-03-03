BEGIN TRANSACTION;
DECLARE @var sysname;
SELECT @var = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Student]') AND [c].[name] = N'Middlename');
IF @var IS NOT NULL EXEC(N'ALTER TABLE [Student] DROP CONSTRAINT [' + @var + '];');
ALTER TABLE [Student] DROP COLUMN [Middlename];

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303113624_removedMiddlename', N'9.0.2');

COMMIT;
GO

