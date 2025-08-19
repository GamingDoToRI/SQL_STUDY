SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM
    ANIMAL_INS
WHERE
    NAME REGEXP('^(Lucy|Ella|Pickle|Rogan|Sabrina|Mitty)$');
    
# '^Lucy$' : Lucy와 매칭되는 단어
# '^Lu' : Lu로 시작되는 문자열 매칭
# 'cy$' : cy로 끝나는 문자열 매칭