use admin
db.createUser(
  {
    user: "cronsunadmin",
    pwd: "pass",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ],
    mechanisms:[ "SCRAM-SHA-1"]
  }
)

 db.auth("superadmin", "thepianohasbeendrinking")
 
 
