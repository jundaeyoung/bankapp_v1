
-- 유저 테이블 설계 해보기
CREATE TABLE user_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(30) NOT NULL,
    fullname VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);
-- 사용자의 계좌 정보 테이블 설계
CREATE TABLE account_tb(
	id INT AUTO_INCREMENT PRIMARY KEY,
    number VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL,
    balance BIGINT NOT NULL COMMENT '계좌잔액',
    user_id INT,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);

-- 입금 내역 저장
-- 출금 내역 저장
-- 사용자간 이체 내역 저장

-- 사용자들에 history 테이블 설계
-- BIGINT 데이터 크기는 8byte 크기에 정수형
-- 조(10에 12승) -- 경(10에 16승) -- 해(10에 20승)
-- 자(10에 24승) -- 양(10에 28승)
CREATE TABLE history_tb(
	id INT AUTO_INCREMENT PRIMARY KEY COMMENT '거래 내역',
    amount BIGINT NOT NULL COMMENT '거래 금액',
    w_account_id INT COMMENT '출금 계좌 id',
    d_account_id INT COMMENT '입금 계좌 id',
    w_balance BIGINT COMMENT '출금 요청된 계좌에 잔액',
    d_balance BIGINT COMMENT '입급 요청된 계좌에 잔액',
    created_at TIMESTAMP NOT NULL DEFAULT now()
);



    