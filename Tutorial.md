## Ruby on Rails
<ul>
  <li>app folder </li>
  <ul>
    <li>
      controllers 
     </li>
     <li>
      models   
     </li>
     <li>
      views
     </li>
  </ul>
</ul>

---

<h5>to list all your defined routes, which are useful for tracking down routing problems in your application, or giving you a good overview of the URLs in an application you're trying to get familiar with.</h5>

  >rails routes
 
---

> @var : is global variable where you can pass it to your view


| Syntax      | Description |
| ----------- | ----------- |
| rails c      | Start the Rails console.|
| reload!   |  allow you to make changes to your code, and continue to use the same console session without having to restart.|
                      


| Syntax      | Description |
| ----------- | ----------- |
| bundle exec rails dp:drop | drop the database|
|  bundle exec rails dp:create  | create database|
| bundle exec rails dp:seed| seed|
- ENV['JWKS_RAW']
 
### ActiveRecord

* Team.has_many(:events ,through: :team_event )


mutation {
  userSignUp(email: "kyle+testcoaching@vanta.gg", authId: "auth0|62b375ca48b94e0a9efb5ec9", role: "coach", token: "8@LVoXK_xcHXdmTQ*dYYj9LnLpk_J4w7PLzqD3VQXXR_rwQb") {
    user {
      authId
    }
  }
}
bundle exec rails  db:drop
* Event.preload(:teams)
* Event.where(scheduled_at: 24.hours.ago..Time.now)
* @b.joins(:teams)
Event.first.teams[0].players[0].email
 Event.first.coach.user
 
bundle exec rails c
  rails 
## 
* [cm lectures](https://67272.cmuis.net/lectures)
* [CS50 Ruby on Rails](https://www.youtube.com/watch?v=gTBCHu0btn8)
* sideqik -rub
   * [job-worker-sidekiq-1](https://www.youtube.com/watch?v=aaGSh38nzq8)
   * [job-worker-sidekiq-2](https://www.youtube.com/watch?v=vvNJlgiQtGQ)
* https://stackoverflow.com/questions/22851676/rails-list-created-updated-records-within-last-24-hours
