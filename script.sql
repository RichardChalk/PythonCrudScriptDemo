-- Version 1
-- BEGIN;
-- CREATE TABLE IF NOT EXISTS members (id, fn, ln);
-- INSERT INTO members VALUES (1, "Homer", "Simpson");
-- INSERT INTO members VALUES (2, "Marge", "Simpson");
-- INSERT INTO members VALUES (3, "Lisa", "Simpson");
-- INSERT INTO members VALUES (4, "Bart", "Simpson");
-- COMMIT;

-- Version 2

-- INSERT OR IGNORE kommer att ignorera INSERT-operationen 
-- om det redan finns en rad med samma id. 
-- Detta säkerställer att varje INSERT bara sker en gång 
-- även om skriptet körs flera gånger.

-- OBS: Lägg märke till att man måste definiera id
-- som PRIMARY KEY för att IGNORE ska fungera!
BEGIN;
CREATE TABLE IF NOT EXISTS members (id PRIMARY KEY, fn, ln);
INSERT OR IGNORE INTO members VALUES (1, "Homer", "Simpson");
INSERT OR IGNORE INTO members VALUES (2, "Marge", "Simpson");
INSERT OR IGNORE INTO members VALUES (3, "Lisa", "Simpson");
INSERT OR IGNORE INTO members VALUES (4, "Bart", "Simpson");
COMMIT;
