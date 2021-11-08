drop table member;
drop table product;
drop table review;
drop table history;

select * from member;
select * from product;
select * from review;
select * from history;

/* ¿Ø¿˙  */
create table member(
	mId varchar(50) primary key,
	mName varchar(20) not null,
	mPw varchar(50) not null,
	mPh varchar(25) not null,
	mAddr1 varchar(25) not null,
	mAddr2 varchar(255) not null,
	mAddr3 varchar(255) not null,
	mEmail varchar(255) not null,
	mImg varchar(255)
);

/* ªÛ«∞ */
create table product(
	pNum int primary key,
	mId varchar(50) not null,
	pName varchar(100) not null,
	pBrand varchar(50) not null,
	pTitle varchar(200) not null,
	pContent varchar(2000) not null,
	pPrice int not null,
	pStock int not null,
	pTotal int default 0,
	pRating number default 0,
	pReview int default 0,
	pCtgr varchar(20) not null,
	pImg1 varchar(50) not null,
	pImg2 varchar(50),
	pDate date default sysdate,
	constraint mIdConsP foreign key (mId) references member(mId) on delete cascade
);

/* ∞·¡¶ ≥ªø™ */
create table history(
	hNum int primary key,
	mId varchar(50) not null,
	hName varchar(20) not null,
	hAddr1 varchar(25) not null,
	hAddr2 varchar(255) not null,
	hAddr3 varchar(255) not null,
	hPh varchar(25) not null,
	pNum int not null,
	pName varchar(100) not null,
	pImg1 varchar(50) not null,
	pPrice int not null,
	hAmount int not null,
	hDate date default sysdate,
	constraint mIdConsH foreign key (mId) references member(mId) on delete cascade,
	constraint pNumConsH foreign key (pNum) references product(pNum) on delete cascade
);

/* ∏Æ∫‰ */
create table review(
	rNum int primary key,
	mId varchar(50) not null,
	pName varchar(100) not null,
	mImg varchar(255) not null,
	pNum int not null,
	rContent varchar(255) not null,
	rRating int not null,
	rDate date default sysdate,
	constraint mIdConsR foreign key (mId) references member(mId) on delete cascade,
	constraint pNumConsR foreign key (pNum) references product(pNum) on delete cascade
);
INSERT INTO history (hNum,mId,hName,hAddr1,hAddr2,hAddr3,hPh,pNum,pName,pImg1,pPrice,hAmount) VALUES((SELECT NVL(MAX(hNum), 0)+1 FROM histroy),#{mId},#{hName},#{hAddr1},#{hAddr2},#{hAddr3},#{hPh},#{pNum},#{pName},#{pImg1},#{pPrice},#{hAmount})
INSERT INTO product(pNum, mId, pName, pBrand, pTitle, pContent, pPrice, pStock, pCtgr, pImg1, pImg2, pImg3, mImg) values((SELECT NVL(MAX(pNum), 0)+1 FROM product),'lee','ø ','∫Í∑£µÂ','ª˘«√ µ•¿Ã≈Õ ø ','ª˘«√ ø ø°¥Î«— º≥∏Ì¿Ã¥Ÿ.','10000','50','clothes','img/product/details/product-3.jpg','','','')
