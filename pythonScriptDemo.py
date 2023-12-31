import sqlite3

conn = sqlite3.connect(
    "C:\\Db\\SQL Lite\\script1.db")

cur = conn.cursor()

with open ("script.sql") as file:
     sqlScript = file.read()

cur.executescript(sqlScript)

# Option 1
memberData = cur.execute(
  "SELECT id, fn FROM members ORDER BY fn")
for m in memberData:
  print(m)

# Option 2
# cur.execute (
#   "SELECT id, fn FROM members ORDER BY fn")
# for m in cur:
#   print(m)

# Skriv endast ut Homer
memberData = cur.execute(
  "SELECT id, fn FROM members WHERE fn = 'Homer'")
for m in memberData:
  print(m)

cur.close()
conn.close()

