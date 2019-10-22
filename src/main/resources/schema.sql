CREATE TABLE USER
(
    ID       VARCHAR(128) PRIMARY KEY NOT NULL,
    EMAIL    VARCHAR(64)              NOT NULL,
    PASSWORD VARCHAR(64)              NOT NULL,
    ROLE     VARCHAR(64)              NOT NULL
);

CREATE TABLE CATEGORY
(
    ID         INT PRIMARY KEY auto_increment,
    TITLE      VARCHAR(30) NOT NULL,
    DATE_ADDED DATE        NOT NULL
);


CREATE TABLE POST
(
    ID               VARCHAR(128) PRIMARY KEY auto_increment,
    TITLE            VARCHAR(64)  NOT NULL,
    IMAGE_NAME       VARCHAR(64),
    ARTICLE          VARCHAR(256) NOT NULL,
    LOCAL_DATE_ADDED DATE         NOT NULL,
    CATEGORY_ID      VARCHAR(128)
);

ALTER TABLE POST
    ADD CONSTRAINT POST_CATEGORY FOREIGN KEY (CATEGORY_ID) references CATEGORY (ID)
