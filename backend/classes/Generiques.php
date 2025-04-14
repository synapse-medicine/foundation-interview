<?php

/**
@brief Ces proc�dures font appel � l�univers m�tier du m�dicament de la base Th�riaque�
@author Moez
@author Seif
*/
class Generiques
{
    /**
    @brief Cette proc�dure affiche les sp�cialit�s g�n�riques (G�n�rique Afssaps � G�n�riques Th�riaque�/m�dicaments virtuels) pour le code sp�cialit�s pass� en param�tre, 
    le deuxi�me param�tre permet de pr�ciser l'information recherch�e. 
    @param integer $codeid Code de la sp�cialit� Th�riaque�
    @return
    - <b>GSP_NOM		</b>: Libell� de la sp�cialit�
    - <b>SP_CODE		</b>: Code de la sp�cialit�
    - <b>SP_GREF_DATECR	</b>: Date de cr�ation du groupe g�n�rique 
    - <b>SP_DATEJOGENE	</b>: Date de parution au journal officiel de la derni�re mise � jour du groupe g�n�rique 
    - <b>GEN_REF		</b>: Sp�cialit� de r�f�rence du groupe g�n�rique.
    @author Moez
    @phase 1
    */
    public static function get_the_gen_spe ( $codeid )
    {
        global $dbAdapter;
        if (! $dbAdapter) {
            return new SoapFault('-2', 'Erreur de connexion &agrave; la base de donn�es');
        }
        $codeid = $dbAdapter->quote($codeid, 'integer');
        $sql = "
            SELECT mg.nom_generique AS gsp_nom,
                ms.id AS sp_code,
                ms.sp_gref_datecr AS sp_gref_datecr,
                ms.sp_datejogene AS sp_datejogene,
                ms.gen_ref AS gen_ref
            FROM medicaments_generiques mg
            JOIN generiques_specialites gs ON mg.id = gs.id_generique
            JOIN medicaments_specialites ms ON gs.id_specialite = ms.id
            WHERE ms.id = $codeid
            ";
        } else {
            return new SoapFault('-1', 'Erreur de param�tres');
        }
        return Shared::returnRows($dbAdapter, $sql);
    }
?>