collection @rankings
attributes :id, :start_date, :end_date, :kilometers
node(:user) do |ranking|
  {
    id: ranking.user.id,
    email: ranking.user.email,
    name: ranking.user.name,
    uuid: ranking.user.uuid
  }
end