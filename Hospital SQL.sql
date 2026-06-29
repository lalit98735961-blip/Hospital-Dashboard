use lalit
select * from [Hospital Data]

Select count(*) as [Total Patients] from [Hospital Data]
select gender, count(*) as [Total Patients] from [Hospital Data] group by Gender
select distinct PatientID from [Hospital Data]
select avg(age) as [Average Age] from [Hospital Data]
select min(age) as Youngest, max(age) as Oldest from [Hospital Data]
select admissiontype, count(*) as [Total Patient] from [Hospital Data] group by AdmissionType
select year, count(*) as [Total Admission] from [Hospital Data] group by YEAR
select Diagnosis, count(*) as Patients from [Hospital Data] group by Diagnosis
select department, count(*) as patients from [Hospital Data] group by Department
select DischargeStatus, count(*) as Patients from [Hospital Data] group by DischargeStatus
select PaymentMethod, avg(billamount) as Avg_bill from [Hospital Data] group by PaymentMethod
select PaymentMethod, sum(billamount) as Revenue from [Hospital Data] group by PaymentMethod
select AdmissionType, sum(billamount) as Revenue from [Hospital Data] group by AdmissionType
select AdmissionType, avg(billamount) as Avg_bill from [Hospital Data] group by AdmissionType
select top 5 name, billamount from [Hospital Data] order by BillAmount desc;
select top 5 name, billamount from [Hospital Data] order by BillAmount;
Select name, Billamount, lag(billamount) over (order by billamount desc) as Previous_Year, lead(billamount) over (order by billamount desc) as Next_Year from [Hospital Data]
Select Name, BillAmount from [Hospital Data] where BillAmount>(select avg(BillAmount) from [Hospital Data])

alter table [Hospital Data] alter column BillAmount bigint

select sum(BillAmount) as [Total Hospital Revenue] from [Hospital Data]
select Name, BillAmount from [Hospital Data] where BillAmount= (Select max(billamount) as Max_bill from [Hospital Data])
select name, billamount from [Hospital Data] where BillAmount = (Select min(billamount) as Min_bill from [Hospital Data])
select Name, billamount, case when billamount > 50000 then 'High' when billamount between 20000 and 50000 then 'Medium' else 'Low' end as Category from [Hospital Data]

select Department, sum(BillAmount) as Total from [Hospital Data] group by Department

Select FirstName, Email, AdmissionType, sum(BillAmount) as [Total Bill] from [Hospital Data] where FirstName='Vijay' group by  FirstName, Email, AdmissionType

Select AdmissionType, sum(BillAmount) as [Total Bill] from [Hospital Data] group by AdmissionType

Select concat(FirstName,' ',  LastName) as Name , BillAmount from [Hospital Data]
alter table [Hospital Data] add Name char(50)
update [Hospital Data] set Name=CONCAT(FirstName, ' ', LastName)

[Highest Bill Amount]

with cte as
(
select *, dense_rank() over (order by BillAmount) as Rank from [Hospital Data]
)
select * from cte where Rank=1
alter table [hospital data] add Year int
update [Hospital Data] set Year = DATENAME(year,AdmissionDate)

select * from [Hospital Data] where age = (select max(age) from [Hospital Data])
select * from [Hospital Data] where age = (select min(age) from [Hospital Data])
select  month(admissiondate) as Month, count(*) as Patients from [Hospital Data]  group by  month(admissiondate) order by Month(AdmissionDate)
select top 1 Diagnosis, count(*) as Total from [Hospital Data] group by Diagnosis order by Diagnosis desc 