# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name:'Test',last_name:'User',email:'test@example.com',password:'123')
Status.create(status:'wishlist',user_id:1)
Status.create(status:'applied',user_id:1)
Status.create(status:'interview',user_id:1)
Status.create(status:'offer',user_id:1)
Status.create(status:'rejected',user_id:1)
Company.create(name:'ABC',location:'Vancouver',url:'www.abc.ca',user_id:'1')
Company.create(name:'DEF',location:'Toronto',url:'www.def.ca',user_id:'1')
Company.create(name:'XYZ',location:'Montreal',url:'www.xyz.ca',user_id:'1')
Job.create(title:'Frontend developer',url:'www.abc.ca/career',deadline:'',note:'',status:'',applied_date:'',company_id:1,user_id:1,status_id:3)
Job.create(title:'Backend developer',url:'www.abc.ca/career',deadline:'',note:'',status:'',applied_date:'',company_id:1,user_id:1,status_id:3)
Job.create(title:'Junior software engineer',url:'www.def.ca/career',deadline:'',note:'',status:'',applied_date:'',company_id:2,user_id:1,status_id:2)
Job.create(title:'Full-stack web developer',url:'www.xyz.ca/career',deadline:'',note:'',status:'',applied_date:'',company_id:3,user_id:1,status_id:1)
Interview.create(interviewer:['Mary', 'Leo', 'David'],interviewer_email:['mary@abc.com','leo@abc.com','david@abc.com'], date:'2021-08-15',note:'',job_id:1)
Interview.create(interviewer:['Chris','Tina'],interviewer_email:['chris@abc.com', 'tina@abc.com'], date:'2021-08-25',note:'',job_id:1)
Interview.create(interviewer:['Simon','Hanna'],interviewer_email:['simon@def.com', 'hanna@def.com'], date:'2021-08-31',note:'',job_id:2)
Activity.create(follow_up:'',reach_out:'',send_thank_you:'',prep_interview:'',prep_cover_letter:'',job_id:1)
Activity.create(follow_up:'',reach_out:'',send_thank_you:'',prep_interview:'',prep_cover_letter:'',job_id:2)
Activity.create(follow_up:'',reach_out:'',send_thank_you:'',prep_interview:'',prep_cover_letter:'',job_id:3)
Activity.create(follow_up:'',reach_out:'',send_thank_you:'',prep_interview:'',prep_cover_letter:'',job_id:4)
