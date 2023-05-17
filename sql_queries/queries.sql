insert into blogger (username, password, name, created_at, email) values ('username_1', 'password', 'John', '2020-01-02', 'email@outlook.com');
insert into blogger (username, password, name, created_at, email) values ('username_2', 'password', 'Vaugn', '2010-08-12', 'email2@outlook.com');
insert into blogger (username, password, name, created_at, email) values ('username_3', 'password', 'Angel', '2017-03-22', 'email3@outlook.com');
insert into blogger (username, password, name, created_at, email) values ('username_4', 'good_password', 'Cathy', '2023-05-18', 'email4@outlook.com');

select username, password, name, created_at , email, id from blogger where created_at >= '2020-01-01';

update blogger set password='bad_password' where password='password';

insert into blog_post (content, title, created_at, blogger_id) values ('this is content', 'title', '2021-03-12', 13);
insert into blog_post (content, title, created_at, blogger_id) values ('this is content', 'title', '2021-03-12', 14);
insert into blog_post (content, title, created_at, blogger_id) values ('this is content', 'title', '2021-03-12', 15);
insert into blog_post (content, title, created_at, blogger_id) values ('this is content', 'title', '2021-03-12', 16);

select username, content, title from blog_post inner join blogger on blog_post.blogger_id = blogger.id ;

insert into blog_post_comment (content, created_at, blogger_id, blog_post_id) values ('this is content', '2022-01-03', 14, 27);
insert into blog_post_comment (content, created_at, blogger_id, blog_post_id) values ('this is content', '2022-01-03', 16, 29);
insert into blog_post_comment (content, created_at, blogger_id, blog_post_id) values ('this is content', '2022-01-03', 13, 30);


select username, blog_post_comment.content, title from blog_post_comment inner join blogger on blog_post_comment.blogger_id = blogger.id inner join blog_post on blog_post.blogger_id = blogger.id;
