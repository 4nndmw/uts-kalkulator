 <?php

    class nimSaya
    {
        private $numbers = array(
            "  ***  \n *   * \n *   * \n *   * \n  ***  ",
            "   *   \n   *   \n   *   \n   *   \n   *   ",
            "  ***  \n     * \n  ***  \n *     \n  ***  ",
            "  ***  \n     * \n  ***  \n     * \n  ***  ",
            " *   * \n *   * \n  ***  \n     * \n     * ",
            "  ***  \n *     \n  ***  \n     * \n  ***  ",
            "  ***  \n *     \n  ***  \n *   * \n  ***  ",
            "  ***  \n     * \n     * \n     * \n     * ",
            "  ***  \n *   * \n  ***  \n *   * \n  ***  ",
            "  ***  \n *   * \n  ***  \n     * \n  ***  "
        );

        public function generate($number)
        {
            $numberStr = str_pad($number, 10, '0', STR_PAD_LEFT);

            $bil1 = (int) $numberStr[8];
            $bil2 = (int) $numberStr[9];

            $bil1Art = $this->numbers[$bil1];
            $bil2Art = $this->numbers[$bil2];

            $bil1Lines = explode("\n", $bil1Art);
            $bil2Lines = explode("\n", $bil2Art);

            $result = '';

            for ($i = 0; $i < count($bil1Lines); $i++) {
                $result .= $bil1Lines[$i] . '  ' . $bil2Lines[$i] . "\n";
            }

            return $result;
        }
    }

   
    ?> 