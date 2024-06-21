create table if not exists users (
    id bigserial primary key,
    name varchar,
    email varchar,
    phone varchar
);

with
    filtered as (select * from users),
    data as (select * from filtered)
select *
from data;