USE alx_book_store;

SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    EXTRA, 
    COLUMN_COMMENT 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = "alx_book_store" 
    AND TABLE_NAME = "Books";
    