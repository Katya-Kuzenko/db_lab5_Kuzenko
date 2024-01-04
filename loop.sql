DO $$
DECLARE
    book_id   Book.Book_ID%TYPE;
    rank      Book.Rank%TYPE;
    title     Book.Title%TYPE;
    price     Book.Price%TYPE;
    rating    Book.Rating%TYPE;
    author    Book.Author%TYPE;
    year      Book.Year%TYPE;
    url       Book.URL%TYPE;
BEGIN
    book_id := 1000000005;  
    rank := 5;              
    title := 'Book';
    price := 19.99;          
    rating := 4.5;          
    author := 'Author';
    year := 2022;           
    url := 'https://amazon.com';  

    FOR counter IN 1..20
    LOOP
        INSERT INTO Book (Book_ID, Rank, Title, Price, Rating, Author, Year, URL)
        VALUES (counter + book_id, counter + rank, title || '_' || counter, price + counter, rating, author || '_' || counter, year - counter + 1, url);
    END LOOP;
END;
$$;
