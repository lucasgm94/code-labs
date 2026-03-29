BEGIN
    FOR i IN 1..30 LOOP
        INSERT INTO CRYPTO_DASHBOARD (precio_usd, volumen_24h, fecha_registro)
        VALUES (
            61000 + (i * 250) + DBMS_RANDOM.VALUE(-900, 900), 
            DBMS_RANDOM.VALUE(25000000, 45000000),           
            TRUNC(SYSDATE) - (30 - i)                        
        );
    END LOOP;
    COMMIT;
END;