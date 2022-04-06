# Exception Handling  - Continue
create table Employee(
EmpID Int Primary Key,
EmpName Varchar(50),
EmailAddress Varchar(75)
);

DELIMITER //
create procedure InsertEmployeeDetails( IN inputEmpID INT, 
																			IN inEmpName Varchar(50),
                                                                            IN  inEmailAddress Varchar(75))                                                                            
BEGIN
declare continue handler for sqlexception select 'Error occrued !!!' as Message ;
insert into Employee(EmpID, EmpName, EmailAddress) values 
(inputEmpID,  inEmpName ,  inEmailAddress ) ;
select * from Employee;
end //
delimiter //
call InsertEmployeeDetails(1, 'Anvesh','anvesh@gmail.com');
call InsertEmployeeDetails(1,'Roy','roy@gmail.com');
# Except handled as 1 is repeated