-- se procedio a eliminar las playlist con menos likes se introdujo la cantidad de '50' se modificaron 10 lineas de la tabla.

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DELETE_PLAYLIST_C_MENOS_LIKES`(IN field INT)
BEGIN
    IF field < 100 THEN
        DELETE FROM play_list
        WHERE cant_de_me_gusta < 100;
    END IF;
END

-- se procedio a agregar nuevo artista y nuevo album en la tabla de ALBUMES / ALBUM despertar Nombre zona ganjah

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_insertNEW_ALBUM_AND_ARTIST`(IN ALBUM_NAME VARCHAR (30), IN NOMBRE_ART VARCHAR (40))
BEGIN
   INSERT INTO ALBUMES (album_name, nombre_art) 

  VALUES (album_name, nombre_art);
END

-- se procedio a agregar nuevos registros de en la tabla ARTISTA en la columna id _atista 

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_NEW_ARTISTA_ID`(IN ID_Artist CHAR(50))
BEGIN
IF ID_Artist = '' THEN
        SELECT 'Error: no se puede agregar el ID indicado';
    ELSE
        INSERT INTO artist (id_artist) VALUES (ID_Artist);
        SELECT * FROM artist ORDER BY id_artist DESC;
    END IF;

END
