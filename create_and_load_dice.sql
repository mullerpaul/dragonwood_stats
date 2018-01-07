CREATE TABLE die_faces
 (face_id NUMBER NOT NULL,
  value   NUMBER NOT NULL)
/

-- load the die table to represent the special dice used in the game
-- one 1, two 2s, two 3s, one 4
INSERT INTO die_faces (face_id, value) VALUES (1, 1)
/
INSERT INTO die_faces (face_id, value) VALUES (2, 2)
/
INSERT INTO die_faces (face_id, value) VALUES (3, 2)
/
INSERT INTO die_faces (face_id, value) VALUES (4, 3)
/
INSERT INTO die_faces (face_id, value) VALUES (5, 3)
/
INSERT INTO die_faces (face_id, value) VALUES (6, 4)
/

-- We could modify this to have different numbers of faces, or any
-- combinations of values on those faces.

-- now commit
COMMIT
/

