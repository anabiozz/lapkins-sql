DROP TABLE IF EXISTS "customer_payment_method" CASCADE;
DROP TABLE IF EXISTS "payment_method" CASCADE;
DROP TABLE IF EXISTS "order_status" CASCADE;
DROP TABLE IF EXISTS "order" CASCADE;
DROP TABLE IF EXISTS "shipping_status" CASCADE;
DROP TABLE IF EXISTS "order_detail" CASCADE;
DROP TABLE IF EXISTS "invoice" CASCADE;
DROP TABLE IF EXISTS "invoice_status" CASCADE;

DROP SEQUENCE IF EXISTS "order_status_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "shipping_status_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "payment_method_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "customer_payment_method_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "order_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "order_detail_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "invoice_status_id_seq" CASCADE;
DROP SEQUENCE IF EXISTS "invoice_id_seq" CASCADE;

CREATE SCHEMA IF NOT EXISTS orders AUTHORIZATION lapkin;
