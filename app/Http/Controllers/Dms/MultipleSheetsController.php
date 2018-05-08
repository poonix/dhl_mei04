<?php 

namespace App\Http\Controllers\Dms;

class MultipleSheetsController implements WithMultipleSheets
{
    use Exportable;

    protected $year;

    public function __construct(int $year)
    {
        $this->year = $year;
    }

    /**
     * @return array
     */
    public function sheets(): array
    {
        $sheets = [];

        // for ($month = 1; $month <= 12; $month++) {
            $sheets[] = new TestController($this->year, "all");
            $sheets[] = new TestController($this->year, "inbound");
            $sheets[] = new TestController($this->year, "outbound");
        // }

        return $sheets;
    }
}