BEGIN TRANSACTION;
ALTER TABLE [Student] ADD [DateOfBirth] date NOT NULL DEFAULT '0001-01-01';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303114018_DateOfBirth', N'9.0.2');

COMMIT;
GO

