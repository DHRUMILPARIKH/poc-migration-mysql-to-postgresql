mysql-postgres-pgloader/
├── docker-compose.yml
├── mysql-init/
│   ├── load-sakila.sql
│   ├── sakila-schema.sql  ( Schema file given in mysql)
│   ├── sakila-data.sql    ( Data file given in mysql)
├── pgloader/
│   └── migrate.load

Contains: Film rental store (tables, views, triggers, stored procedures)
https://dev.mysql.com/doc/index-other.html


log:

pgloader-container  | 2025-05-17T14:59:02.020000Z LOG pgloader version "3.6.7~devel"
pgloader-container  | 2025-05-17T14:59:02.023000Z LOG Parsing commands from file #P"/data/migrate.load"
pgloader-container  | 2025-05-17T14:59:02.107000Z LOG Migrating from #<MYSQL-CONNECTION mysql://root@mysql:3306/sakila {1007DEA573}>
pgloader-container  | 2025-05-17T14:59:02.108000Z LOG Migrating into #<PGSQL-CONNECTION pgsql://postgres@postgres:5432/sakila {1007DEB143}>
pgloader-container  | 2025-05-17T14:59:03.751000Z LOG report summary reset
pgloader-container  |              table name     errors       rows      bytes      total time
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |         fetch meta data          0         80                     0.180s
pgloader-container  |          Create Schemas          0          0                     0.003s
pgloader-container  |        Create SQL Types          0          2                     0.022s
pgloader-container  |           Create tables          0         32                     0.085s
pgloader-container  |          Set Table OIDs          0         16                     0.008s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |       sakila.film_actor          0       5462   146.0 kB          0.071s
pgloader-container  |        sakila.inventory          0       4581   137.1 kB          0.097s
pgloader-container  |    sakila.film_category          0       1000    25.7 kB          0.065s
pgloader-container  |             sakila.film          0       1000   190.9 kB          0.187s
pgloader-container  |        sakila.film_text          0       1000   111.3 kB          0.149s
pgloader-container  |          sakila.address          0        603    57.7 kB          0.222s
pgloader-container  |          sakila.country          0        109     3.5 kB          0.270s
pgloader-container  |         sakila.category          0         16     0.5 kB          0.327s
pgloader-container  |          sakila.payment          0      16044   962.6 kB          0.587s
pgloader-container  |             sakila.city          0        600    21.4 kB          0.249s
pgloader-container  |         sakila.customer          0        599    57.6 kB          0.316s
pgloader-container  |            sakila.actor          0        200     7.2 kB          0.322s
pgloader-container  |         sakila.language          0          6     0.2 kB          0.470s
pgloader-container  |           sakila.rental          0      16044     1.2 MB          0.527s
pgloader-container  |            sakila.staff          0          2    71.2 kB          0.145s
pgloader-container  |            sakila.store          0          2     0.1 kB          0.175s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  | COPY Threads Completion          0          4                     0.686s
pgloader-container  |          Create Indexes          0         42                     1.607s
pgloader-container  |  Index Build Completion          0         42                     0.243s
pgloader-container  |         Reset Sequences          0         13                     0.032s
pgloader-container  |            Primary Keys          0         16                     0.032s
pgloader-container  |     Create Foreign Keys          0         22                     0.078s
pgloader-container  |         Create Triggers          0         30                     0.086s
pgloader-container  |         Set Search Path          0          1                     0.005s
pgloader-container  |        Install Comments          0          0                     0.000s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |       Total import time          ✓      47268     2.9 MB          2.769s
pgloader-container exited with code 0