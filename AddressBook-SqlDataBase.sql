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

--UC9
Select COUNT(Typee) from Contacts_Book Where Typee='Family';

--UC10
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email,Names,Typee) values('Sanjay','Kumar','Kolar','Kolar','Karnataka','553746','9874687656','Sanjay@gmail.com','Sanjaykumar','Friend'); 
Insert into Contacts_Book(FirstName,LastName,Addres,City,Statee,Zip,PhoneNumber,Email,Names,Typee) values('Prathap','Singh','Rajasthan','Rajasthan','Rajasthan','343746','6787468765','Prathap@gmail.com','Prathapsingh','Family'); 

--UC11
Create Table Type
(
ID int primary Key identity(1,1),
TypeName Varchar(30),
PersonID int Foreign Key REFERENCES Contacts_Book(ID)
);
Insert into Type(TypeName,PersonID) Values('Friends','1');
Insert into Type(TypeName,PersonID) Values('Family','1');
select * from Type;

--UC12
Select*from Contacts_Book;

--UC13
Create Procedure AddContacts
(
@FirstName varchar(30),
@LastName varchar(30),
@Address varchar(30),
@City varchar(30),
@State varchar(30),
@Zip BigInt,
@PhoneNumber BigInt,
@Email varchar(30),
@Name varchar(30),
@Type varchar(30)
)
As
Begin
Insert into Contacts_Book values(@FirstName,@LastName,@Address,@City,@State,@Zip,@PhoneNumber,@Email,@Name,@Type);
End 

--UC14
Create Procedure DeleteContacts
(
@Id int
)
As
Begin
Delete from Contacts_Book Where Id=@Id;
End

--UC15
Create Procedure UpdateContactDeatils
(
@Id int,
@Type varchar(30)
)
As
Begin
Update Contacts_Book set Typee=@Type Where Id=@Id;
End