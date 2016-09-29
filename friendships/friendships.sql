SELECT users.id, users.first_name, users.last_name, friend_id, users2.first_name as friend_first_name, users2.last_name as friend_last_name
from users
	LEFT JOIN friendships ON user_id = friendships.user_id
    LEFT JOIN users AS users2 ON users2.id = friendships.friend_id