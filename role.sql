-- Tạo Roles
CREATE ROLE UserRole;
CREATE ROLE StaffRole;

-- Cấp quyền cho UserRole
GRANT UPDATE ON users TO UserRole;
GRANT SELECT ON books TO UserRole;
GRANT SELECT,INSERT ON read TO UserRole;

-- Cấp quyền cho StaffRole
GRANT INSERT, UPDATE ON staff TO StaffRole;
GRANT SELECT,INSERT,UPDATE,DELETE ON books,re,report,authors TO StaffRole;
GRANT SELECT ON users TO StaffRole;
SELECT * FROM users



-- Tạo stored procedure để tạo login và user từ dữ liệu trong bảng Users
CREATE OR REPLACE PROCEDURE create_login_and_user_from_users_table()
LANGUAGE plpgsql
AS $$
DECLARE
    username INT;
    password_hash VARCHAR(256);
    sql_query TEXT;
BEGIN
    -- Sử dụng cursor để lặp qua từng bản ghi trong bảng Users
    FOR username, password_hash IN
        SELECT user_id, password FROM users
    LOOP
        -- Tạo login với tên người dùng và mật khẩu từ bảng Users
        sql_query := 'CREATE ROLE ' || quote_ident('user_' || username) || ' LOGIN PASSWORD ' || quote_literal(password_hash) || ';';
        EXECUTE sql_query;

        -- Tạo user cho login với tên người dùng từ bảng Users
        sql_query := 'CREATE USER ' || quote_ident('user_' || username) || ' FOR ROLE ' || quote_ident('user_' || username) || ';';
        EXECUTE sql_query;

        -- Gán vai trò cho người dùng (ví dụ: UserRole)
        sql_query := 'GRANT UserRole TO ' || quote_ident('user_' || username) || ';';
        EXECUTE sql_query;
    END LOOP;
END $$;


-- Tạo stored procedure để tạo login và user cho staff từ dữ liệu trong bảng Staff
CREATE OR REPLACE PROCEDURE create_login_and_user_for_staff()
LANGUAGE plpgsql
AS $$
DECLARE
    staff_id INT;
    password_hash VARCHAR(256);
    sql_query TEXT;
BEGIN
    -- Sử dụng cursor để lặp qua từng bản ghi trong bảng Staff
    FOR staff_id, password_hash IN
        SELECT staff_id, password FROM staff
    LOOP
        -- Tạo role (login) cho staff
        sql_query := 'CREATE ROLE ' || quote_ident('staff_' || staff_id) || ' LOGIN PASSWORD ' || quote_literal(password_hash) || ';';
        EXECUTE sql_query;

        -- Tạo user cho staff
        sql_query := 'CREATE USER ' || quote_ident('staff_' || staff_id) || ' FOR ROLE ' || quote_ident('staff_' || staff_id) || ';';
        EXECUTE sql_query;

        -- Gán vai trò cho staff (StaffRole)
        sql_query := 'GRANT StaffRole TO ' || quote_ident('staff_' || staff_id) || ';';
        EXECUTE sql_query;
    END LOOP;
END $$;














