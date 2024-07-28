SELECT
    TABLE_NAME = "Books",
    COLUMN_TYPE AS 'Column Type', 
    IS_NULLABLE AS 'Is Nullable', 
    COLUMN_KEY AS 'Column Key', 
    COLUMN_DEFAULT AS 'Column Default', 
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'books';

