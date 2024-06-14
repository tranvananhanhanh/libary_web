-- tính tổng số sách trong thư viện

CREATE or REPLACE FUNCTION total_book(out total integer) as
$$
BEGIN
    select sum(quantity) into total from book;
END;
$$
LANGUAGE plpgsql;


--select total_book();

-- kiểm tra xem sách có sẵn sàng cho mượn hay không

CREATE or REPLACE FUNCTION numAvailable(in id integer, out num integer)
as $$
BEGIN
    num := (select quantity from book where book_id = id) - (select count(*) from re where book_id = id and return_date is null);
END;
$$
LANGUAGE plpgsql;

-- select numavailable(677);


-- tính số sách một người dùng đang mượn

CREATE OR REPLACE FUNCTION reserving(in id integer, out num integer)
as $$
BEGIN
    select count(*) into num
    from re
    where user_id = id
    and return_date is null;
END;
$$
LANGUAGE plpgsql;

-- select reserving(240);


