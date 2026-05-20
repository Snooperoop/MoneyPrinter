import duckdb 

def init_db():
    db_conn = duckdb.connect("MoneyPrinter.db")

    with open("db/sql/schema.sql") as f: 
        db_conn.execute(f.read())




