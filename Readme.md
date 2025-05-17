project-root/
├── docker-compose.yml
├── mysql-init/
│   └── init.sql
└── pgloader/
    └── migrate.load

logs:


pgloader-container  | 2025-05-17T14:01:47.017000Z LOG pgloader version "3.6.7~devel"
pgloader-container  | 2025-05-17T14:01:47.026000Z LOG Parsing commands from file #P"/data/migrate.load"
pgloader-container  | 2025-05-17T14:01:47.135000Z LOG Migrating from #<MYSQL-CONNECTION mysql://root@mysql:3306/my_Test {1007E67AC3}>
pgloader-container  | 2025-05-17T14:01:47.135000Z LOG Migrating into #<PGSQL-CONNECTION pgsql://postgres@postgres:5432/my_Test_postgre {1007E687E3}>
pgloader-container  | 2025-05-17T14:01:47.459000Z LOG report summary reset
pgloader-container  |              table name     errors       rows      bytes      total time
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |         fetch meta data          0          1                     0.133s
pgloader-container  |          Create Schemas          0          0                     0.001s
pgloader-container  |        Create SQL Types          0          0                     0.007s
pgloader-container  |           Create tables          0          1                     0.018s
pgloader-container  |          Set Table OIDs          0          1                     0.009s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |            public.users          0          2     0.0 kB          0.019s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  | COPY Threads Completion          0          4                     0.019s
pgloader-container  |         Reset Sequences          0          1                     0.022s
pgloader-container  |     Create Foreign Keys          0          0                     0.000s
pgloader-container  |         Create Triggers          0          0                     0.001s
pgloader-container  |        Install Comments          0          0                     0.001s
pgloader-container  | -----------------------  ---------  ---------  ---------  --------------
pgloader-container  |       Total import time          ✓          2     0.0 kB          0.043s
pgloader-container exited with code 0








mysql-postgres-pgloader/
├── docker-compose.yml
├── mysql-init/
│   ├── load-sakila.sql
│   ├── load-employees.sql
│   ├── load-world.sql
│   ├── load-chinook.sql
│   ├── sakila-schema.sql
│   ├── sakila-data.sql
│   ├── employees.sql
│   ├── world.sql
│   ├── chinook.sql
├── pgloader/
│   └── migrate.load