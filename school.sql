-- Active: 1708412342472@@127.0.0.1@1433@appdb@dbo
CREATE TABLE school_class(  
    class_id int IDENTITY(1,1) primary key,
    class_name varchar(100) not null,
    teacher_name varchar(100) not null,
    room_number varchar(20),
    class_capacity int,
    create_time DATETIME default GETDATE(),
    update_time DATETIME default GETDATE()
);
EXECUTE sp_addextendedproperty N'MS_Description', 'Table for managing school class data', N'user', N'dbo', N'table', N'school_class', NULL, NULL;
EXECUTE sp_addextendedproperty N'MS_Description', 'Unique identifier for each class', N'user', N'dbo', N'table', N'school_class', N'column', N'class_id';
EXECUTE sp_addextendedproperty N'MS_Description', 'Name of the class', N'user', N'dbo', N'table', N'school_class', N'column', N'class_name';
EXECUTE sp_addextendedproperty N'MS_Description', 'Name of the teacher', N'user', N'dbo', N'table', N'school_class', N'column', N'teacher_name';
EXECUTE sp_addextendedproperty N'MS_Description', 'Room number where the class is held', N'user', N'dbo', N'table', N'school_class', N'column', N'room_number';
EXECUTE sp_addextendedproperty N'MS_Description', 'Maximum number of students that can be enrolled in the class', N'user', N'dbo', N'table', N'school_class', N'column', N'class_capacity';
EXECUTE sp_addextendedproperty N'MS_Description', 'Timestamp for when the record was created', N'user', N'dbo', N'table', N'school_class', N'column', N'create_time';
EXECUTE sp_addextendedproperty N'MS_Description', 'Timestamp for when the record was last updated', N'user', N'dbo', N'table', N'school_class', N'column', N'update_time';




