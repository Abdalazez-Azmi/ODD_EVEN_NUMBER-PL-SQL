CREATE OR REPLACE FUNCTION ODD_EVEN_NUMBER (P_NUM IN NUMBER)
    RETURN VARCHAR2
IS
    V_RESULT   VARCHAR2 (100);
BEGIN
    IF MOD (P_NUM, 2) = 0
    THEN
        V_RESULT := 'THIS IS EVEN NUMBER';
    ELSE
        V_RESULT := 'THIS IS ODD NUMBER';
    END IF;

    RETURN V_RESULT;
END;


-- Execute Level 1 

BEGIN
    DBMS_OUTPUT.PUT_LINE (ODD_EVEN_NUMBER (1));
END;

-- Execute Level 2 

BEGIN
    DBMS_OUTPUT.PUT_LINE (ODD_EVEN_NUMBER (&P_NUM));
END;


