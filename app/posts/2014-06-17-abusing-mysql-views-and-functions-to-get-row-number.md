---
title: "Key Remap - The Digit-Symbol Hack"
author:
  name: "David Conner"
tags: "mysql ruby views function ddl row rownum row_number variables cursors"
---

### MySQL - Y U NO HAVE ROW_NUMBER!?

> Wow some things are just frustrating with MySQL.  

While I appreciate the product, its vision of a open source database and its early
delivery on that vision, it's lack of particular features is just plain irritating.  

I usually work with Postgres, so sometimes I don't even run into these problems.  But that
just makes it more frustrating when I do because often my design depends on these database 
features.  So when they're not, I have to hit the drawing board in the middle of a project, 
which can be stressful.  And when I circumvent these MySQL problems, more often than not, 
the code I deliver ends up being *brittle* and **hacky**, at best.
 
Which is why i typically lean towards Postgres, especially when I'm working on a project
where I know my customer wants reporting to make insights with their data.

###



### I couldn't even find this on *the internet!*



### Ugh ... i fought mysql and mysql won

but everytime you reference the column name, it increments the row numbers...

here rownum's are multiples of 2
```mysql
select * from view_academic_profile_schools_by_profile 
inner join (select fn_reset_ap_schools_rownum()) poop 
where academic_profile_id = 2
```

and here rownum's are multiples of 3
```mysql
select * from view_academic_profile_schools_by_profile 
inner join (select fn_reset_ap_schools_rownum()) poop 
where academic_profile_id = 2 
and rownum in (1,2,3,4) 
```

unless you hide the view behind a subquery of course..

select vap.* from (select * from view_academic_profile_schools_by_profile) vap 
inner join (select fn_reset_ap_schools_rownum()) poop
where vap.academic_profile_id = 2 
and vap.rownum in (1,2,3,4,5,6,7,8,9,10,11,12,13) 
and vap.rownum > 0 limit 10;

but
