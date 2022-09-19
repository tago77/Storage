-- 시퀀스 테이블 생성
CREATE TABLE sequences ( name varchar(32), currval BIGINT UNSIGNED ) ENGINE=InnoDB;

-- 프로시져 생성
DELIMITER $$
CREATE PROCEDURE `create_sequence`(IN the_name text)
MODIFIES SQL DATA
DETERMINISTIC
BEGIN
    DELETE FROM sequences WHERE name=the_name;
    INSERT INTO sequences VALUES (the_name, 0);
END;

-- 함수 생성
DELIMITER $$
CREATE FUNCTION `nextval`(the_name varchar(32))
RETURNS BIGINT UNSIGNED
MODIFIES SQL DATA
DETERMINISTIC
BEGIN
    DECLARE ret BIGINT UNSIGNED;
    UPDATE sequences SET currval=currval+1 WHERE name=the_name;
    SELECT currval INTO ret FROM sequences WHERE name=the_name limit 1;
    RETURN ret;
END;

-- 환경변수 변경
set sql_safe_updates=0;

-- 시퀀스 호출
call create_sequence('accidentacno');

-- 조회
select nextval('accidentacno');
