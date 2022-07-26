INSERT INTO EQUIPMENT_MSTR (EQ_CODE,EQ_NAME,EQ_QTY,EQ_DESC) VALUES
("SEA_KAYAK_SOLO","Sea Kayak Solo",10,"2 Lifejackets, 2 Paddles, Roof pads, Tie downs, 1 Bail bucket"),
("SEA_KAYAK_TANDEM","Sea Kayak Tandem",20,"2 Lifejackets, 2 Paddles, Roof pads, Tie downs, 1 Bail bucket");

INSERT INTO EQUIPMENT_DET (EQ_ID,EQ_CODE,EQ_STATUS,RENT_CNT) VALUES
("EQ0001", "SEA_KAYAK_SOLO", "IN STOCK", 0),
("EQ0003", "SEA_KAYAK_SOLO", "OVERDUE", 2),
("EQ0004", "SEA_KAYAK_SOLO", "DAMAGED", 2),
("EQ0002", "SEA_KAYAK_TANDEM", "FOR SALE", 30),
("EQ0005", "SEA_KAYAK_TANDEM", "FOR SALE", 30),
("EQ0008", "CANOE", "FOR SALE", 30),
("EQ0014", "OAR_RAFT", "FOR SALE", 30);

INSERT INTO STATUS_MSTR (STATUS,STATUS_DESC) VALUES
("IN STOCK", "Status for equipments in stock"),
("OVERDUE", "Status for equipments late return"),
("MISSING", "Status for equipments no return"),
("DAMAGED", "Status for equipments returned damaged"),
("UNKNOWN", "Status for equipments unknown"),
("RENTED", "Status for equipments rented"),
("SOLD", "Status for equipments sold"),
("FOR SALE", "Status for equipments for sale");

INSERT INTO INVENTORY (EQ_CODE,INV_STATUS,INV_QTY) VALUES
("SEA_KAYAK_SOLO", "IN STOCK", 8),
("SEA_KAYAK_SOLO", "DAMAGED", 1),
("SEA_KAYAK_SOLO", "OVERDUE", 1),
("SEA_KAYAK_TANDEM", "FOR SALE", 2);

INSERT INTO SALES_MSTR (SO_ID,SO_DT) VALUES
("SO0001", "2019-02-03"),
("SO0002", "2019-02-05");

INSERT INTO SALES_DET (SO_ID,SOD_LINE,EQ_ID,SOD_UNIT_PRICE,SOD_QTY) VALUES
("SO0001", 1, EQ0005, 720, 1),
("SO0001", 1, EQ0002, 720, 1),
("SO0001", 1, EQ0008, 420, 1),
("SO0002", 1, EQ0014, 540, 1);

INSERT INTO CUSTOMER_MSTR (CUST_ID,CUST_NAME,CUST_PHONE,CUST_ADDR,CUST_EMAIL,OVERDUE_AMT) VALUES
("CUST00001","Debbie Crane","+3530916751231","Ten Earlsfort Terrace,Dublin,D02 T380,Ireland","debbiecrane@outlook.com",0),
("CUST00002","David Lewis","+3530910969856","23 Corrib Village,Galway,H02 Y3HW,Ireland","dlewis@outlook.com",0);

INSERT INTO RESERVE_MSTR (RESERVE_ID,CUST_ID,PICK_DT,RETURN_DT) VALUES
("RER00001","CUST00001","2019-09-08","2019-09-28"),
("RER00002","CUST00001","2020-01-05","2020-01-13"),
("RER00003","CUST00002","2019-05-20","2019-06-02");

INSERT INTO RESERVE_DET (RESERVE_ID,EQ_CODE,RESERVE_QTY) VALUES
("RER00001","CANOE",2),
("RER00001","SEA_KAYAK_TANDEM",1),
("RER00002","SEA_KAYAK_TANDEM",2),
("RER00003","OAR_RAFT",1);

INSERT INTO RENT_MSTR (RENT_ID,RESERVE_ID,PICK_DT_ACTUAL,RETURN_DT_ACTUAL,IS_DAMAGED_RETURN,IS_ONTIME_RETURN,IS_NO_RETURN) VALUES
("REN00001","RER00002","2020-01-05","2020-01-13",0,1,0),
("REN00002","RER00003","2019-05-20","2019-06-02",0,1,0),

INSERT INTO RENT_DET (RENT_ID,EQ_ID) VALUES
("REN00001","EQ0002"),
("REN00001","EQ0005"),
("REN00002","EQ0008");

INSERT INTO VENDOR_MSTR (VEND_ID,NAME,ADDR) VALUES
("VEN001","Bestway","Phoenix, AZ 85034"),
("VEN002","AIRE","Meridian, ID 83642");

INSERT INTO EQUIPMENT_REPAIR (EQ_CODE,VEND_ID,REPAIR_HRS) VALUES
("SEA_KAYAK_SOLO","VEN001",2),
("CANOE","VEN001",1),
("SEA_KAYAK_TANDEM","VEN002",2);

INSERT INTO PURCHASE_MSTR (PO_ID,VEND_ID,PO_DT,DELIVERY_DT) VALUES
("PO00001","VEN001","2019-04-08","2019-05-10"),
("PO00002","VEN002","2019-03-24","2019-05-01"),
("PO00003","VEN001","2020-09-29","2020-11-18"),

INSERT INTO PURCHASE_DET (PO_ID,POD_LINE,EQ_CODE,POD_UNIT_PRICE,POD_QTY) VALUES
("PO00001",1,"SEA_KAYAK_SOLO", 900,4),
("PO00001",2,"CANOE", 700,5),
("PO00001",3,"OAR_RAFT", 900,3),
("PO00002",1,"DUCKIE", 400,45),
("PO00003",1,"PADDLE_RAFT", 900,14);

INSERT INTO PRICE_LIST_MSTR (EQ_CODE,EQ_STATUS,PRICE) VALUES
("SEA_KAYAK_SOLO","FOR SALE",540),
("SEA_KAYAK_TANDEM","FOR SALE",720),
("CANOE","FOR SALE",420);

