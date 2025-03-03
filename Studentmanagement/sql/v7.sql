BEGIN TRANSACTION;
EXEC sp_rename N'[Enrollments].[Grade]', N'FinalGrade', 'COLUMN';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303155149_namechange', N'9.0.2');

COMMIT;
GO

