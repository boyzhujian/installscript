https://itbilu.com/database/postgre/410auo8xZ.html



psql command
- user login   :    psql -U postgres
- login : psql -U postgres -H 192.168.1.3 -d test
- change db  ： \c dbname
- show database :  \l
- show tables: \d
- show columns from dbtable: \d mytable
- describe dbtable: \d+ mytable
- quit :  \q



https://www.youtube.com/watch?v=wzKWMF-kWGc

Basic data type
- surrogate keys
- text
- numbers
- dates and times

Keys:
- include a surrogate key
- model your natural key via constraints
- use bigserial or  uuid for your primary key

uuid
```
create extension "uuid-ossp"'
select uuid_generate_v4();

create extension pycrypto;
select gen_random_uuid();
```

use text  avoid varchar,char,anything else
text: Use indexes for pattern matching

```
create  index on user(name);
select * from accounts where email LIKE 'PEter%';

//a function index can support suffix lookups; avoid  full table index search
create index backsearch on  userser(reverse(email));
select  * from  accounts where reverse(email )  LIKE reverse('%doe.com');
```

Times & Data
 timestamptz      Always use timestamptz(not time)
 a query that starts at begin of current week
 select date_trunc('week',now())::date;

a query that counts users created by day;
 select  date_trunc('day',created_at), count(*) from users group by  date_trunc('day',create_at)

 select was a year ago
 select now()- '1 year'::interval;


use bool,not bit


bytea

 select  md5(bindary_data) from table;

 Don't use  
 - money  not up to modern standards
 - timestamp;  use timestamptz
 - time;  your probably mean timestamptz
 - serial;  use bigserial

 Are you sure?

 -float /integer   : use numberic
 varchar,char use text it's faster
 bitstring   premature optimization
 xml libxml2 is awful but...
 josn: you probably want jsonb


 what is type
   - a ow  in pg_type


toast  is great  
- keep data rows small

make toast  faster
 tsvector on text  gin on tsvector /jsonb

 - array
 - jsonb 
- enum
- range


extension types
- email 
- url

geometry
- point
- line 
-lseg
- box
- path
-polygon
- circle

network address
 - inet
 - cider
 - macaddr
 - ip4r  github.com/RhodiumToad/ip4r


- phyiscal units
- post BIS
- pg-currency
- fixed Decimal
- Hyperloglog

create your own 
domains,composite types,functions,operators,aggregates

community extension
 PostGis  ip4r  email uri, pgxn




