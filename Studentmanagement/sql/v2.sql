BEGIN TRANSACTION;
ALTER TABLE [Student] ADD [Middlename] nvarchar(max) NOT NULL DEFAULT N'';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303113715_AddedMiddlename', N'9.0.2');

COMMIT;
GO

