DO $$
DECLARE 
    i INT; 
BEGIN 
    FOR i IN 1..1000 LOOP
        INSERT INTO book (title, isbn, author_id, genre_id, published_date) 
        VALUES (
            'Title_' || i,  
            'ISBN-_' || i,
            (CURRENT_DATE - (floor(random() * 365 * 5))::int)
        );
        
        INSERT INTO author (author_name, bio) 
        VALUES (
            i, 
            'Auhtor_' || i,
            'Bio_' || i 
        );
        
        INSERT INTO genre (genre_name) 
        VALUES (
            i, 
            'Genre_' || i
        );
    END LOOP;
END $$;