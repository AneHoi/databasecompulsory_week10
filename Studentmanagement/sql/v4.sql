BEGIN TRANSACTION;
ALTER TABLE [Course] ADD [InstructorId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303115056_Instructor', N'9.0.2');

COMMIT;
GO

