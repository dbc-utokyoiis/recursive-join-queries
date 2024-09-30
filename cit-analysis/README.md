Recursive queries for citation network analysis
===============================================

This diretory contains the code of recursive queries that analyze citation networks on cit-Patents dataset[2] in SQL databases.
Based on the citation analysis workloads for datalog in the literature[1], we made the following SQL queries:

1. `01.TC.sql`: Transitive closure query
2. `02.SG.sql`: Same generation query
3. `03.REACH.sql`: Reachability query
4. `04.SSSP.sql`: Single-source shortest paths query
5. `05.CC.sql`: Connected components query


## Steps to run the queries in a SQL database

1. Download `cit-Patents.txt.gz` from https://snap.stanford.edu/data/cit-Patents.html and place it in the same directory as `mkdata.sh`.
2. Unzip `cit-Patents.txt.gz` to create `cit-Patents.txt`.
3. Run `mkdata.sh` to create a file to be loaded into a database. This script will create a file named `CPAT-tmp.txt` in the same directory.
4. Create a table `EDGE` in a database using `schema.sql`, which is a DDL file for Hitachi Advanced Database (HADB), but can be easily modified for other databases.
5. Load `CPAT-tmp.txt` into the table.

## References

- [1] Alexander Shkapsky, Mohan Yang, Matteo Interlandi, Hsuan Chiu, Tyson Condie, and Carlo Zaniolo. 2016. Big Data Analytics with Datalog Queries on Spark. In Proceedings of the 2016 International Conference on Management of Data (SIGMOD '16). Association for Computing Machinery, New York, NY, USA, 1135–1149. https://doi.org/10.1145/2882903.2915229
- [2] Jure Leskovec, SNAP: Network datasets: US Patent citation network, https://snap.stanford.edu/data/cit-Patents.html