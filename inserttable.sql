INSERT INTO Roles (role_name) VALUES 
('Admin'),
('Moderator'),
('User');

INSERT INTO Users (username, email, password_hash, role_id) VALUES 
('admin_user', 'admin@gmail.com', 'admin', 1),
('moderator_user', 'moderator@gmail.com', 'moder', 2),
('user_1', 'user1@gamail.com', 'password1', 3),
('user_2', 'user2@gmail.com', 'password2', 3),
('user_3', 'user3@gmail.com', 'password3', 3);

INSERT INTO Profiles (user_id, full_name, bio, avatar_url, birthdate) VALUES 
(1, 'Admin', 'System administrator', 'avatar1.jpg', '1985-01-01'),
(2, 'Moderator', 'Content moderator', 'avatar2.jpg', '1990-06-15'),
(3, 'John Doe', 'Gamer and blogger', 'avatar3.jpg', '2001-04-10'),
(4, 'Alice Smith', 'Photographer and traveler', 'avatar4.jpg', '1995-07-22'),
(5, 'Michael Brown', 'Tech enthusiast', 'avatar5.jpg', '1998-11-30');

INSERT INTO Friendships (user_id1, user_id2, status) VALUES 
(2, 3, 'accepted'),
(3, 1, 'pending');

INSERT INTO Posts (user_id, content, media_url) VALUES 
(3, 'Hello world! My first post.', NULL),
(2, 'Moderation tips for new users.', 'https://vk.com/post12345');

INSERT INTO Comments (post_id, user_id, text) VALUES 
(1, 2, 'Welcome to the platform!'),
(2, 3, 'Thanks for the advice!');

INSERT INTO Likes (post_id, user_id) VALUES 
(1, 2),
(2, 3);