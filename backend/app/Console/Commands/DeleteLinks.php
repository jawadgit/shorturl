<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use App\Models\Url;
use Illuminate\Console\Command;

class DeleteLinks extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'delete:links';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'delete links that are older than 30 days';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        //$now = \Carbon\Carbon::now();
        Url::where('created_at', '<', now()->subDays(30))->delete();
    }
}
