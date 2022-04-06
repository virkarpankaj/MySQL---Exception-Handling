# Exception Handling  -- Exit

create table Employee_EXIT(
EmpID Int Primary Key,
EmpName Varchar(50),
EmailAddress Varchar(75)
);

DELIMITER //
create procedure InsertEmployeeDetails_EXIT( IN inputEmpID INT, 
																			IN inEmpName Varchar(50),
                                                                            IN  inEmailAddress Varchar(75))                                                                            
BEGIN
declare EXIT handler for sqlexception select 'Error occrued !!!' as Message ;
insert into Employee_EXIT(EmpID, EmpName, EmailAddress) values 
(inputEmpID,  inEmpName ,  inEmailAddress ) ;

select * from Employee_EXIT;
end //
delimiter //

call InsertEmployeeDetails_EXIT(1, 'Anvesh','anvesh@gmail.com');
call InsertEmployeeDetails_EXIT(1,'Roy','roy@gmail.com');
# Except handled as 1 is repeated