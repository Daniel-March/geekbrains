drop function if exists hello;
create function hello()
returns text deterministic
begin
    declare cur_time time default now();
    if (cur_time < "06:00:00") then
        return "Доброй ночи";
    end if;
    if (cur_time < "12:00:00") then
        return "Доброе утро";
    end if;
    if (cur_time < "18:00:00") then
        return "Добрый день";
    end if;
    return "Добрый вечер";
end;






drop trigger if exists null_update_off;
drop trigger if exists null_insert_off;
create trigger null_update_off before update on products
for each row
    begin
        if(NEW.name is null and NEW.code is null)then
            set NEW.name = OLD.name;
            set NEW.code = OLD.code;
        end if;
    end;
create trigger null_insert_off before insert on products
for each row
    begin
        if(NEW.name is null and NEW.code is null)then
            signal sqlstate '45000' set message_text = "Имя и код не могут быть пустыми одновременно";
        end if;
    end;