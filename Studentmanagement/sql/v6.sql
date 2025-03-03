BEGIN TRANSACTION;
EXEC sp_rename N'[Course].[InstructorId]', N'instructorId', 'COLUMN';

ALTER TABLE [Course] ADD [InstructorId] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';

CREATE UNIQUE INDEX [IX_Enrollments_StudentId] ON [Enrollments] ([StudentId]);

CREATE INDEX [IX_Course_instructorId] ON [Course] ([instructorId]);

CREATE UNIQUE INDEX [IX_Course_InstructorId] ON [Course] ([InstructorId]);

ALTER TABLE [Course] ADD CONSTRAINT [FK_Course_Instructors_InstructorId] FOREIGN KEY ([InstructorId]) REFERENCES [Instructors] ([Id]) ON DELETE CASCADE;

ALTER TABLE [Course] ADD CONSTRAINT [FK_Course_Instructors_instructorId] FOREIGN KEY ([instructorId]) REFERENCES [Instructors] ([Id]) ON DELETE CASCADE;

ALTER TABLE [Enrollments] ADD CONSTRAINT [FK_Enrollments_Student_StudentId] FOREIGN KEY ([StudentId]) REFERENCES [Student] ([id]) ON DELETE CASCADE;

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20250303125449_relations', N'9.0.2');

COMMIT;
GO

