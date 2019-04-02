use admin
db.createUser(
  {
    user: "cronsunadmin",
    pwd: "pass",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ],
    mechanisms:[ "SCRAM-SHA-1"]
  }
)


db.createUser(
  {
    user: "cronsunadmin",
    pwd: "pass",
    roles: [ { role: "readWrite", db: "cronsun" } ],
    mechanisms:[ "SCRAM-SHA-1"]
  }
)


 db.auth("superadmin", "thepianohasbeendrinking")
 
 
 security:
    authorization: "disabled"
 
 
mongo 10.240.213.105/dbname  -u username -p pass --authenticationDatabase dbname
