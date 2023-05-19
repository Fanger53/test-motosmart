collection @rankings

attributes :id, :start_date, :end_date, :kilometers

node :user do |ranking|
  {
    id: ranking.user.id,
    name: ranking.user.name,
    email: ranking.user.email
  }
end