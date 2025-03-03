namespace StudentManagement.models;

public class Course
{
    public int id {get; set;}
    public Guid InstructorId {get; set;}
    public string Title {get; set;}
    public int Credits {get; set;}
    public Instructor instructor {get; set;}
}