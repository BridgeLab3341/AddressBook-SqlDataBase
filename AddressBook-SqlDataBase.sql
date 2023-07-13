--UC1
Create DataBase AddressBook_Service

Create Table Contacts_Book(Id int Primary key identity(1,1), FirstName varchar(20), LastName varchar(20), Addres varchar(100), City varchar(20), Statee varchar(20),Zip varchar(6),PhoneNumber varchar(10),Email Varchar(30)) 

--UC2
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email) values('Soma','Shekar','Banglore','Banglore','Karnataka','563746','9808787656','Soma@gmail.com')
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email) values('Anil','Kumar','Delhi','Delhi','Delhi','563746','9808787656','Anil@gmail.com')
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email) values('Radha','Rani','Mumbai','Mumbai','Maharastra','678667','7876865675','Radh@gmail.com')
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email) values('Ganesh','Kumar','Manglore','Manglore','Karnataka','554645','8677566775','Ganesh@gmail.com')

Select * from Contacts_Book

--UC3
Update Contacts_Book set FirstName='Krishna',LastName='Kumar' where Id=4;

--UC4
Delete Contacts_Book where FirstName='Anil';

--UC5
Select * from Contacts_Book where City='Banglore' or Statee='Karnataka';

--UC6
Select COUNT(City) from Contacts_Book Where City='Banglore';
Select COUNT(Statee) from Contacts_Book Where Statee='Karnataka';

--UC7
Select * from Contacts_Book Where City='Banglore' ORDER BY FirstName

--UC8
Alter Table Contacts_Book Add Names Varchar(30), Typee Varchar(30);
update Contacts_Book set Names='Somashekar',Typee='Family' Where Id=1;
update Contacts_Book set Names='RadhaRani',Typee='Friend' Where Id=3;
update Contacts_Book set Names='KrishnaKumar',Typee='Profession' Where Id=4;
Select * from Contacts_Book