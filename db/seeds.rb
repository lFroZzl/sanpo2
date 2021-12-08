Event.create!([
  {title: "tati", min_age: 66, max_age: 69, note: "kesos", start_date: "2021-12-02 02:57:00", end_date: "2021-12-03 02:57:00", participant: 4, location_id: nil, user_id: 1, sport_id: 1},
  {title: "tatas", min_age: 10, max_age: 15, note: "amagando edades", start_date: "2021-12-03 14:20:00", end_date: "2021-12-03 17:30:00", participant: 24, location_id: nil, user_id: 1, sport_id: 1},
  {title: "kekekeke", min_age: 12, max_age: 55, note: "probando mientras me acuerdo ", start_date: "2021-12-08 05:51:00", end_date: "2021-12-08 14:52:00", participant: 4, location_id: nil, user_id: 7, sport_id: 1}
])
Sport.create!([
  {name: "futbol"},
  {name: "tenis"},
  {name: "natacion"}
])
User.create!([
  {email: "prueba@gmail.com", encrypted_password: "$2a$12$cD/CPkdC2Xu/IygEGD2GM.WvAUiT8Wlr12663twkQng5j9eB2eGHS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "admin", vip: false, location_id: nil},
  {email: "carlos@gmail.com", encrypted_password: "$2a$12$FLRzwk4ptwJmhbHP5Xh0KOTAF4TtjoQGAl.wF6vQae/lBIhUSgrGW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "user", vip: false, location_id: nil},
  {email: "new@gmail.com", encrypted_password: "$2a$12$bJj3nDX8h7pnUmd91q.m2ORTyZYOslIeeDYB2RvjzaY3xHEqwYoFW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "user", vip: false, location_id: nil},
  {email: "prueba2@gmail.com", encrypted_password: "$2a$12$HugcYtiMlbIXdgZ29zaE5eMjAmM87KBhGwaT1KIYlcvQzIsL30bKu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "user", vip: false, location_id: nil},
  {email: "admin@gmail.com", encrypted_password: "$2a$12$4L41wNzT3drY3tgpGF5mfet4f79ESNgNB71t0ZHWh/jGhURdOVSoq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "user", vip: false, location_id: nil},
  {email: "admin2@gmail.com", encrypted_password: "$2a$12$vJ.d6UgpvXZBSJonRlsHwOLPKExELmfMr32QHZzzLWn50Ym2h6mYm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: nil, phone_number: nil, age: nil, note: nil, tag: nil, role: "admin", vip: false, location_id: nil}
])
