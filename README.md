# Instagram Posts Schema Design

![alt text](Header.png)<br>

## overview

This project is a simplified clone of Instagram's blogging functionality, focusing on photo sharing, likes, hashtags, comments, and user relationships. The schema design supports essential features for storing and managing data without including profile-specific information.

-----------------------------
![alt text](Example.png)
-----------------------------

**Features**
1. Photo Management
- Store and manage photo data, including:
    - `Photo ID`: Unique identifier for each photo.
    - `Image URL`: Location of the uploaded photo.
    - `User Association`: Each photo is linked to the user who uploaded it.
    - `Timestamp`: Record of when the photo was created.
2. Likes
- Users can like photos, and the schema tracks:
    - `User ID`: Identifier of the user liking the photo.
    - `Photo ID`: Identifier of the liked photo.
    - `Timestamp`: Record of when the like was created.
3. Hashtags
- Photos can have hashtags associated with them:
    - `Tag ID`: Unique identifier for each hashtag.
    - `Tag Name`: The actual text of the hashtag (e.g., #nature).
    - `Photo Tags`: Relation between photos and their associated hashtags.
4. Comments
- Users can comment on photos:
    - `Comment ID`: Unique identifier for each comment.
    - `Comment Text`: Content of the comment.
    - `User ID`: Identifier of the user who posted the comment.
    - `Photo ID`: Identifier of the photo being commented on.
    - `Timestamp`: Record of when the comment was created.
5. User Relationships
Manage user relationships to enable following and followers:
    - `Follower ID`: User who is following.
    - `Followed ID`: User being followed.

-----------------------

## Entity-Relationship Diagram (ERD)

![alt text](<ERD ig.png>)

## The SQL File 

The schema SQL code is *[IGpost_schemaDesign.sql](./IGpost_schemaDesign.sql)*<br>
The mocking Data is *[ig_clone_data.sql](./ig_clone_data.sql)*<br>
The sample queries are *[igpost_queries.sql](./igpost_queries.sql)*
