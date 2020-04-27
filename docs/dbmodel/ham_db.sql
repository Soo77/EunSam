-- 회원
DROP TABLE IF EXISTS `member` RESTRICT;

-- 상품
DROP TABLE IF EXISTS `product` RESTRICT;

-- 상품옵션
DROP TABLE IF EXISTS `product_option` RESTRICT;

-- 주문
DROP TABLE IF EXISTS `order` RESTRICT;

-- 주문_상품
DROP TABLE IF EXISTS `order_product` RESTRICT;

-- 상품사진
DROP TABLE IF EXISTS `product_photo` RESTRICT;

-- 회원
CREATE TABLE `member` (
	`member_id`      VARCHAR(50)  NOT NULL, -- 회원ID
	`password`       VARCHAR(100) NOT NULL, -- 비밀번호
	`name`           VARCHAR(10)  NOT NULL, -- 이름
	`address`        VARCHAR(500) NOT NULL, -- 주소
	`address_detail` VARCHAR(100) NOT NULL, -- 상세주소
	`card_no`        VARCHAR(50)  NULL,     -- 카드번호
	`email`          VARCHAR(50)  NOT NULL, -- 이메일
	`mobile_no`      VARCHAR(30)  NOT NULL  -- 연락처
);

-- 회원
ALTER TABLE `member`
	ADD CONSTRAINT `PK_member` -- 회원 기본키
		PRIMARY KEY (
			`member_id` -- 회원ID
		);

-- 상품
CREATE TABLE `product` (
	`product_no`     INT           NOT NULL, -- 상품번호
	`product_name`   VARCHAR(100)  NOT NULL, -- 상품명
	`product_price`  INT           NOT NULL, -- 가격
	`product_detail` VARCHAR(4000) NULL,     -- 상세
	`category`       VARCHAR(10)   NULL      -- 상품카테고리
);

-- 상품
ALTER TABLE `product`
	ADD CONSTRAINT `PK_product` -- 상품 기본키
		PRIMARY KEY (
			`product_no` -- 상품번호
		);

ALTER TABLE `product`
	MODIFY COLUMN `product_no` INT NOT NULL AUTO_INCREMENT;

-- 상품옵션
CREATE TABLE `product_option` (
	`option_no`   INT          NOT NULL, -- 옵션번호
	`product_no`  INT          NOT NULL, -- 상품번호
	`option_name` VARCHAR(100) NOT NULL  -- 옵션명
);

-- 상품옵션
ALTER TABLE `product_option`
	ADD CONSTRAINT `PK_product_option` -- 상품옵션 기본키
		PRIMARY KEY (
			`option_no` -- 옵션번호
		);

ALTER TABLE `product_option`
	MODIFY COLUMN `option_no` INT NOT NULL AUTO_INCREMENT;

-- 주문
CREATE TABLE `order` (
	`order_no`            INT          NOT NULL, -- 주문번호
	`member_id`           VARCHAR(50)  NOT NULL, -- 회원ID
	`recipient_name`      VARCHAR(50)  NOT NULL, -- 수령인 이름
	`recipient_mobile_no` VARCHAR(30)  NOT NULL, -- 수령인 연락처
	`recipient_address`   VARCHAR(500) NOT NULL, -- 배송지주소
	`payment_date`        CHAR(14)     NOT NULL, -- 주문일
	`payment_method`      VARCHAR(10)  NOT NULL, -- 결제수단
	`status`              VARCHAR(10)  NOT NULL  -- 상태
);

-- 주문
ALTER TABLE `order`
	ADD CONSTRAINT `PK_order` -- 주문 기본키
		PRIMARY KEY (
			`order_no` -- 주문번호
		);

ALTER TABLE `order`
	MODIFY COLUMN `order_no` INT NOT NULL AUTO_INCREMENT;

-- 주문_상품
CREATE TABLE `order_product` (
	`order_product_no` INT NOT NULL, -- 주문상품 번호
	`order_no`         INT NOT NULL, -- 주문번호
	`product_no`       INT NOT NULL, -- 상품번호
	`option_no`        INT NOT NULL, -- 옵션번호
	`quantity`         INT NOT NULL  -- 수량
);

-- 주문_상품
ALTER TABLE `order_product`
	ADD CONSTRAINT `PK_order_product` -- 주문_상품 기본키
		PRIMARY KEY (
			`order_product_no` -- 주문상품 번호
		);

ALTER TABLE `order_product`
	MODIFY COLUMN `order_product_no` INT NOT NULL AUTO_INCREMENT;

-- 상품사진
CREATE TABLE `product_photo` (
	`product_photo_no` INT NOT NULL, -- 상품사진번호
	`product_no`       INT NULL,     -- 상품번호
	`file_path`        INT NULL      -- 파일경로
);

-- 상품사진
ALTER TABLE `product_photo`
	ADD CONSTRAINT `PK_product_photo` -- 상품사진 기본키
		PRIMARY KEY (
			`product_photo_no` -- 상품사진번호
		);

ALTER TABLE `product_photo`
	MODIFY COLUMN `product_photo_no` INT NOT NULL AUTO_INCREMENT;

-- 상품옵션
ALTER TABLE `product_option`
	ADD CONSTRAINT `FK_product_TO_product_option` -- 상품 -> 상품옵션
		FOREIGN KEY (
			`product_no` -- 상품번호
		)
		REFERENCES `product` ( -- 상품
			`product_no` -- 상품번호
		);

-- 주문
ALTER TABLE `order`
	ADD CONSTRAINT `FK_member_TO_order` -- 회원 -> 주문
		FOREIGN KEY (
			`member_id` -- 회원ID
		)
		REFERENCES `member` ( -- 회원
			`member_id` -- 회원ID
		);

-- 주문_상품
ALTER TABLE `order_product`
	ADD CONSTRAINT `FK_order_TO_order_product` -- 주문 -> 주문_상품
		FOREIGN KEY (
			`order_no` -- 주문번호
		)
		REFERENCES `order` ( -- 주문
			`order_no` -- 주문번호
		);

-- 주문_상품
ALTER TABLE `order_product`
	ADD CONSTRAINT `FK_product_TO_order_product` -- 상품 -> 주문_상품
		FOREIGN KEY (
			`product_no` -- 상품번호
		)
		REFERENCES `product` ( -- 상품
			`product_no` -- 상품번호
		);

-- 주문_상품
ALTER TABLE `order_product`
	ADD CONSTRAINT `FK_product_option_TO_order_product` -- 상품옵션 -> 주문_상품
		FOREIGN KEY (
			`option_no` -- 옵션번호
		)
		REFERENCES `product_option` ( -- 상품옵션
			`option_no` -- 옵션번호
		);

-- 상품사진
ALTER TABLE `product_photo`
	ADD CONSTRAINT `FK_product_TO_product_photo` -- 상품 -> 상품사진
		FOREIGN KEY (
			`product_no` -- 상품번호
		)
		REFERENCES `product` ( -- 상품
			`product_no` -- 상품번호
		);