---------------------------------------------------------------------------
--  Skipanaskrá til að búa til töflur fyrir Endurmenntunarnámskeið
--      í SQL
--
--  Hjálmtýr Hafsteinsson, apríl 2023.
---------------------------------------------------------------------------

-- Henda út gömlum útgáfum af töflum

drop table if exists felagar;
drop table if exists leigur;
drop table if exists sumarhus;


-- Búa til töflurnar

create table felagar(
        fnr integer,
        nafn char(30),
        postnr char(3),
        stig integer,
        inng_ar integer);

create table sumarhus(
        husnr integer,
        stadur varchar(50),
        fermetrar integer,
        fj_ruma integer);

create table leigur(
        fnr integer,
        husnr integer,
        dags date,
        fj_daga integer);


-- Setja inn sýnisgögn

insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (48, 'Gunnar', 107, 450, 2017);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (12, 'Erla', 200, 125, 1994);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (31, 'Rakel', 112, 330, 2014);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (32, 'Alexander', 112, 200, 2009);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (8, 'Bjarni', 101, 370, 2002);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (64, 'Helga', 112, 55, 2016);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (71, 'Hanna', 220, 500, 2014);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (24, 'Gunnar', 107, 330, 1999);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (85, 'Anna', 200, 110, 2014);
insert into felagar (fnr, nafn, postnr, stig, inng_ar)
        values (45, 'Birna', 112, 215, 2015);

insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1001, 'Laugarvatn 1', 45, 6);
insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1002, 'Laugarvatn 2', 65, 6);
insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1004, 'Reykir', 42, 5);
insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1005, 'Husafell A1', 50, 6);
insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1010, 'Husafell B2', 80, 7);
insert into sumarhus (husnr, stadur, fermetrar, fj_ruma)
        values (1012, 'Grimsnes 45', 120, 10);

insert into leigur (fnr, husnr, dags, fj_daga)
        values (48, 1001, '2021-07-08', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (48, 1005, '2020-07-16', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (12, 1005, '2021-02-13', 3);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (32, 1004, '2019-06-20', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (32, 1004, '2021-08-05', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (85, 1002, '2021-07-01', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (85, 1001, '2020-11-05', 3);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (71, 1001, '2021-07-08', 7);
insert into leigur (fnr, husnr, dags, fj_daga)
        values (64, 1012, '2020-10-14', 3);


