<?php

require_once "./classes/Generiques.php"
require_once "./classes/Specialite.php"

class theriakAPI {
    /**
	 * Cette proc�dure affiche les sp�cialit�s g�n�riques (G�n�rique Afssaps � G�n�riques Th�riaque�/m�dicaments virtuels) pour le code sp�cialit�s pass� en param�tre
	 * @param string $codeid
	 * @return row_get_the_gen_spe[] $data
	 */
	public function get_the_gen_spe($codeid) {
		return Generiques::get_the_gen_spe ( $codeid);
	}


    /**
     * Renvoie les fiches sp�cialit�s r�pondant au crit�re de recherche pass� en param�tre, le nom peut contenir les jokers compatibles avec SQL (% �.)
	 * @param string $lib_prod
	 * @param string $mono_vir
	 * @return row_get_the_spe_txt[] $data
	 */
	public function get_the_spe_txt($lib_prod, $mono_vir) {
		return Specialite::get_the_spe_txt ( $lib_prod, $mono_vir );
	}
}

?>