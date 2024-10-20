USE alx_book_store;

SELECT
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    COLUMN_DEFAULT, 
    COLUMN_TYPE, 
    COLUMN_KEY, 
    EXTRA

FROM
    information_schema.COLUMNS

WHERE
    TABLE_NAME = 'books'
    AND TABLE_SCHEMA = 'alx_book_store';