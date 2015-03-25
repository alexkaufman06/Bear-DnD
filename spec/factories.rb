FactoryGirl.define do
  factory(:user) do
    email("Joe@aol.com")
    password("password")
  end
end
