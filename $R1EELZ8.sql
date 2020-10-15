use Clinic;
select Client.name as Pacient_name,Client.surname as Pacient_surname,Client.fathers_name,Client.address,Client.born_date,Client.finn_code,Client.passport_code,Client.mail,Client.phone,Marital.text as marital_status,Gender.text as gender
, Appointment.diagnosis,Appointment.receipt_date,Appointment.registration_date from Client
join Appointment on Appointment.client_id=Client.id
join Gender on Gender.id=Client.gender_id
join Marital on Marital.id=Client.marital_id

select Personal.name as Dr_name,Personal.surname as Dr_surname,Personal.fathers_name,Personal.phone,Personal.department,Category.list as category,History_data.prescribed_treatment
,History_data.treatment_data,Client.name as pacient_name,Client.surname as pacient_surame from Personal
join Category on Category.id = Personal.category_id
join History_data on History_data.doctor_id = Personal.id
join Client on Client.id = Personal.client_id
