select b."book_id",b."title"
from "books" b
join "re" re
on re."book_id" = b."book_id"
where re."return_date" > re."due";