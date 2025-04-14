<?php

/**
 * @brief Ces fonctions font appel � l�univers m�tier du m�dicament de la base Th�riaque�. Elles permettent soit de retrouver une ou des sp�cialit�s r�pondant � des crit�res de recherche, soit d�obtenir des informations compl�mentaires sur une sp�cialit� donn�e
 * 
 * @author Seif
 */
class Specialite
{
/**
     * Renvoie les fiches sp�cialit�s r�pondant au crit�re de recherche pass� en param�tre, le nom peut contenir les jokers compatibles avec SQL (% �.)
     * <b>Param�tres de sortie : </b>
    * <ul>
    * <li><b>id_specialite</b> : Identifiant de la spécialité</li>
    * <li><b>nom_commercial</b> : Nom commercial du médicament</li>
    * <li><b>prix</b> : Prix du médicament</li>
    * <li><b>laboratoire</b> : Laboratoire fabricant</li>
    * </ul>
     * 
     * @param string $lib_prod Terme de la recherche
     * @return Array
     * @author Seif
     * @phase 1
	 * modifications v14
     */
    public static function get_the_spe_txt ( $lib_prod)
    {
        global $dbAdapter;
        if (! $dbAdapter) {
            return new SoapFault('-2', 'Erreur de connexion &agrave; la base de donn�es');
        }
		
        $sOrderSpNom = " order by sp_nom asc";		
        $lib_prod = $dbAdapter->quote('%' . $lib_prod . '%', 'text');
        $sql = "
        SELECT 
            ms.id AS id_specialite,
            ms.nom_commercial,
            ms.prix,
            ms.laboratoire,
        FROM 
            medicaments_specialites ms
        WHERE 
            UPPER(ms.nom_commercial) LIKE UPPER(" . $lib_prod . ")
        " . $sOrderSpNom . ";";
		  
         return Shared::returnRows($dbAdapter, $sql);
    }
?>