CREATE INDEX idx_user_role ON Users(role_id);
CREATE INDEX idx_post_user ON Posts(user_id);
CREATE INDEX idx_comment_post ON Comments(post_id);
CREATE INDEX idx_like_post_user ON Likes(post_id, user_id);